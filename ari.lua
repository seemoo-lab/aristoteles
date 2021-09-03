---
-- This file contains the main dissector, responsible for dissecting the ARI header and calling the TLV parsers.
-- @author Tobias Kröll
--
-- NOTE:
-- Bits / Bytes are counted from the "left" to align with the bitfield operation in the dissector
-- Also indices for bits/bytes will also start from 0
--

require("utils")

local disTable = DissectorTable.new("ari")

local loader_output = require("ari_data_loader")
local codec_parsers, tlv_parsers, structure_lut, asstring_lut, additional_fields = loader_output.codec_parsers, loader_output.tlv_parsers, loader_output.structure, loader_output.asstring_lut, loader_output.fields

ari = Proto("ari", "ari protocol")

-- Header fields
proto_flag = ProtoField.bytes("ari.proto_flag", "Protocol Flag", base.SPACE)
pkt_seq_num = ProtoField.uint16("ari.seq_num", "Sequence number", base.DEC) -- 11 bits long (?)
pkt_group = ProtoField.uint8("ari.gid", "Group ID", base.DEC)
pkt_type_id = ProtoField.uint16("ari.type_id", "Type", base.DEC)
pkt_type = ProtoField.string("ari.type")
pkt_len = ProtoField.uint16("ari.length", "Length", base.DEC)
pkt_trx = ProtoField.uint16("ari.transaction", "Transaction", base.DEC)
pkt_ack_opt = ProtoField.uint16("ari.ack_opt", "Acknowledgement Option", base.DEC)

-- Unknown Header bits/bytes
pkt_unknown_4 = ProtoField.uint8("ari.unknown_4", "Unknown (Byte 4, Bits 5-7)", base.DEC)
pkt_unknown_5 = ProtoField.uint8("ari.unknown_5", "Unknown (Byte 5, Bit 7)", base.DEC)
pkt_unknown_8 = ProtoField.uint8("ari.unknown_8", "Unknown (Byte 8, Bit 2-3)", base.DEC)
pkt_unknown_10 = ProtoField.uint8("ari.unknown_10", "Unknown (Byte 10, Bit 7)", base.DEC)

-- TLV Header fields
tlv_id_field = ProtoField.uint16("ari.tlv.id", "TLV id", base.DEC)
tlv_mandatory_field = ProtoField.bool("ari.tlv.mandatory", "TLV mandatory")
tlv_codec_name_field = ProtoField.string("ari.tlv.codec.name", "TLV codec name")
tlv_type_desc_field = ProtoField.string("ari.tlv.type_desc", "TLV type description")
tlv_version_field = ProtoField.uint16("ari.tlv.version", "TLV version", base.DEC)
tlv_length_field = ProtoField.uint16("ari.tlv.length", "TLV length", base.DEC)
tlv_data_field = ProtoField.bytes("ari.tlv.data", "Raw TLV data", base.SPACE)
tlv_data_uint_field = ProtoField.uint64("ari.tlv.data_uint", "Raw TLV data as uint", base.DEC)

-- Unknown TLV Header bits/bytes
tlv_unknown_0 = ProtoField.uint8("ari.tlv.unknown_0", "Unknown TLV Header Byte 0, Bit 7", base.DEC)
tlv_unknown_2 = ProtoField.uint8("ari.tlv.unknown_2", "Unknown TLV Header Byte 2, Bits 6-7", base.DEC)

-- Expert Informations
expert_tlv_header_malformed = ProtoExpert.new("ari.tlv.header.malformed", "ARI: TLV header incomplete (should have 4 bytes)", expert.group.MALFORMED, expert.severity.ERROR)
expert_tlv_data_malformed = ProtoExpert.new("ari.tlv.data.malformed", "ARI: TLV data length exceeds packet length", expert.group.MALFORMED, expert.severity.ERROR)
expert_header_wrong_magic_bytes = ProtoExpert.new("ari.header.magic_bytes_missing", "ARI: Packet does not start with ARI magic bytes \"DE C0 7E AB\"", expert.group.MALFORMED, expert.severity.ERROR)
expert_too_small = ProtoExpert.new("ari.minimum_length", "ARI: Packet is smaller than minimum length of 12 bytes.", expert.group.MALFORMED, expert.severity.ERROR)
expert_missing_mandatory_tlv = ProtoExpert.new("ari.missing_mandatory_tlv", "ARI: Missing mandatory TLV", expert.group.MALFORMED, expert.severity.ERROR)
expert_tlv_codec_length_warn = ProtoExpert.new("ari.tlv_codec_length_warn", "ARI: Specified codec length did not perfectly fit into this field (some bytes at the end were cut-off).", expert.group.MALFORMED, expert.severity.WARN)

ari.fields = { proto_flag, pkt_seq_num, pkt_group, pkt_type, pkt_type_id, pkt_len, pkt_trx, pkt_ack_opt, -- Header fields
                pkt_unknown_4, pkt_unknown_5, pkt_unknown_8, pkt_unknown_10,
                tlv_id_field, tlv_mandatory_field, tlv_codec_name_field, tlv_type_desc_field, tlv_version_field, tlv_length_field, tlv_data_field, tlv_data_uint_field, tlv_unknown_0, tlv_unknown_2,
              }

-- Include fields from TLV parsers
table.Merge(ari.fields, additional_fields)

ari.experts = {
    expert_tlv_header_malformed,
    expert_tlv_data_malformed,
    expert_header_wrong_magic_bytes,
    expert_too_small,
    expert_missing_mandatory_tlv,
    expert_tlv_codec_length_warn
}

--- Initialization function
function ari.init()
  disTable:add(147, ari)
end

function dissect_tlv(tlv_tree, packet, cur_tlv_byte, message_type_info)

    --- TLV (Header) structure
    -- 4 Bytes
    -- -      ?               ??
    -- XXXXXXXX_XXXXXXXX_XXXXXXX_XXXXXXXX (variable length data)
    -- \_____/? \_/\___/ \___/?? \______/ 
    --  Type     |  Type   \ Length /
    --       Version 

    local buffer = packet.buffer

    -- Check if the header is even available in the buffer (not malformed)
    if packet.total_length < cur_tlv_byte + 4 then
        
        tlv_tree:add_tvb_expert_info(expert_tlv_header_malformed, buffer(cur_tlv_byte, packet.total_length - cur_tlv_byte))
        return nil
    end

    local tlv_header_buffer = buffer(cur_tlv_byte, 4)

    tlv_tree:add("Starts at byte: " .. cur_tlv_byte)

    -- Bit 8 or the rightmost bit is still unknown
    local tlv_id_1 = tlv_header_buffer:bitfield(0, 7)
    local tlv_id_2 = tlv_header_buffer:bitfield(11, 5)

    -- TLV ID
    local tlv_id = tlv_id_1 + bit32.rshift(tlv_id_2, -7) -- shift left to concatenate number correctly as found in the logs
    local tlv = {}
    tlv.id = tlv_id

    local tlv_information = message_type_info and message_type_info.tlvs[tlv_id] or nil
    local tlv_id_extra_info = ""

    if not tlv_information then
        tlv_id_extra_info = " (Not specified as an expected ID in libARI.dylib)"
    end

    tlv_tree:add(tlv_id_field, buffer(cur_tlv_byte, 2), tlv_id, "ID: " .. tlv_id .. tlv_id_extra_info)

    local tlv_codec_name = tlv_information and tlv_information.codec and tlv_information.codec.name or nil
    local tlv_codec_name_text = tlv_codec_name or "Unknown codec / type"
    local tlv_type_desc = tlv_information and tlv_information.type_desc or "???"
    local tlv_mandatory = message_type_info and table.Contains(message_type_info.mtlvs, tlv_id) or false

    local tlv_item_mandatory = tlv_tree:add(tlv_mandatory_field, buffer(cur_tlv_byte, 2), tlv_mandatory, "Mandatory: " .. (tlv_mandatory and "Yes" or "No"))
    local tlv_item_codec_name = tlv_tree:add(tlv_codec_name_field, buffer(cur_tlv_byte, 2), tlv_codec_name_text, "Codec: " .. tlv_codec_name_text)
    local tlv_item_type_desc = tlv_tree:add(tlv_type_desc_field, buffer(cur_tlv_byte, 2), tlv_type_desc, "Description: " .. tlv_type_desc)
    tlv_item_mandatory:set_generated(true)
    tlv_item_codec_name:set_generated(true)
    tlv_item_type_desc:set_generated(true)
    tlv_tree:append_text(" - " .. tlv_codec_name_text .. " (" .. tlv_type_desc .. ")" .. (tlv_mandatory and "*" or ""))

    -- TLV version
    local tlv_version = tlv_header_buffer:bitfield(8, 3)
    
    tlv_tree:add(tlv_version_field, buffer(cur_tlv_byte + 1, 1), tlv_version, "Version: " .. tlv_version)
    tlv.version = tlv_version
    cur_tlv_byte = cur_tlv_byte + 2

    -- TLV Length
    local tlv_length_1 = tlv_header_buffer:bitfield(16, 6)
    local tlv_length_2 = tlv_header_buffer:bitfield(24, 8)
    local tlv_length = tlv_length_1 + bit32.rshift(tlv_length_2, -6)

    tlv_tree:add(tlv_length_field, buffer(cur_tlv_byte, 2), tlv_length, "Length: " .. tlv_length)
    tlv.length = tlv_length
    cur_tlv_byte = cur_tlv_byte + 2

    -- Unknown Byte 0, bit 7
    tlv_tree:add(tlv_unknown_0, tlv_header_buffer:range(0, 1), tlv_header_buffer:bitfield(7, 1), "Unknown Byte 0, Bit 7: " .. tlv_header_buffer:bitfield(7, 1))

    -- Unkown Byte 2, bits 6-7
    tlv_tree:add(tlv_unknown_2, tlv_header_buffer:range(2, 1), tlv_header_buffer:bitfield(22, 2), "Unknown Byte 2, Bits 6-7: " .. tlv_header_buffer:bitfield(22, 2))

    -- Return if there is no data associated with the TLV
    if tlv_length <= 0 then
        return tlv
    end

    -- Check if the length is even available in the buffer (not malformed)
    if packet.total_length < cur_tlv_byte + tlv_length then
        
        tlv_tree:add_tvb_expert_info(expert_tlv_data_malformed, buffer(cur_tlv_byte, packet.total_length - cur_tlv_byte))
        return tlv
    end

    local tlv_data = buffer(cur_tlv_byte, tlv_length)

    tlv_tree:add(tlv_data_field, tlv_data)

    -- For matching / fuzzing purposes add a simple uint field for all TLVs that are max. 8 bytes long (most status/flag TLVs are).
    -- This helps to quickly match those to strings and their value in Ghidra / the binary
    local tlv_data_raw_unsigned_int = nil
    if tlv_length <= 8 then
        tlv_data_raw_unsigned_int = tlv_data:le_uint64()

        tlv_tree:add(tlv_data_uint_field, tlv_data, tlv_data_raw_unsigned_int, "Raw TLV data (uint): " .. tlv_data_raw_unsigned_int)
    end

    local available_tlv_parsers = table.GetWithPath(tlv_parsers, { packet.group_int, packet.type_int, tlv.id })
    local available_codec_parsers = tlv_codec_name and table.GetWithPath(codec_parsers, { tlv_codec_name }) or nil
    local extra_information = {
        asstring = asstring_lut,
        structure = structure_lut,
    }

    if available_tlv_parsers then
        -- TLV parser
        local tlv_content_tree = tlv_tree:add("Content", tlv_data)
        local parse_success = false

        for _, parser in pairs(available_tlv_parsers) do
            parse_success = parser(packet, tlv_content_tree, cur_tlv_byte, tlv_data, extra_information)
            
            if parse_success then
                break
            end
        end
        
        if not parse_success then
            tlv_content_tree:set_text("Content: Unknown (tlv parsers failed)")
        end
    elseif available_codec_parsers then
        -- Codec parsers
        local tlv_content_tree = tlv_tree:add("Content", tlv_data)
        local parse_success = false

        for _, parser in pairs(available_codec_parsers) do
            local codecLength = parser.length or tlv_length
            local tlv_len_int = tlv_length

            local remainder = tlv_length % codecLength

            if remainder > 0 then
                -- Clean length of data that can be processed
                tlv_len_int = tlv_len_int - remainder

                -- Add note, that the codec length did not perfectly match a fields length.
                tlv_tree:add_tvb_expert_info(expert_tlv_codec_length_warn, buffer(cur_tlv_byte + tlv_len_int, remainder))
            end

            local occurences = tlv_len_int / codecLength

            parse_success = true

            for i = 0, occurences - 1 do
                parse_success = parse_success and parser.parse(packet, tlv_content_tree, cur_tlv_byte + i * codecLength, tlv_data:range(i * codecLength, codecLength), extra_information)
            end

            if parse_success then
                break
            end
        end

        if not parse_success then
            tlv_content_tree:set_text("Content: Unknown (codec parsers failed)")
        end
    elseif tlv_codec_name and tlv_data_raw_unsigned_int and asstring_lut[tlv_codec_name] then
        -- AsString resolver
        local tlv_content_tree = tlv_tree:add("Content", tlv_data, asstring_lut[tlv_codec_name][tlv_data_raw_unsigned_int:tonumber()] or "???")
    else
        tlv_tree:add("Content: Unknown (no parser available)", tlv_data)
    end

    return tlv
end

function ari.dissector(buffer, pinfo, tree)

    --- ARI (Header) structure
    -- 12 Bytes
    -- 0  1  2  3  4        5        6       7        8        9        10       11
    -- DE C0 7E AB XXXXXXXX_XXXXXXXX_XXXXXXX_XXXXXXXX_XXXXXXXX_XXXXXXXX_XXXXXXXX_XXXXXXXX (variable length data)
    -- \_________/ \___/??? \_____/| \____/| \______/ \/??|\_/ \______/ \_____/? \______/ 
    --  INDICATOR  GROUP      SEQ GRP LEN SEQ  LEN   TYPE A SEQ  TYPE     TRX      TRX
    --

    local packet = {}

    packet.buffer = buffer
    packet.pinfo = pinfo

    packet.total_length = buffer:len()

    local ari_tree = tree:add(ari, buffer(), "ARI Protocol")

    -- minimum header length check
    if packet.total_length < 12 then 
        ari_tree:add_tvb_expert_info(expert_too_small, buffer())
        return
    end 

    -- correct ARI magic bytes check
    if buffer(0, 4):bytes() ~= ByteArray.new("de c0 7e ab") then 
        ari_tree:add_tvb_expert_info(expert_header_wrong_magic_bytes, buffer(0, 4))
        return
    end 

    --- HEADER
    local header_tree = ari_tree:add("Header", buffer(0, 12))

    -- PROTOCOL FLAG/INDICATOR: DE C0 7E AB
    header_tree:add_le(proto_flag, buffer(0, 4))

    --- SEQ NUMBER (11 bits split accross bytes 5, 6, 8)
    local seq_num = 0

    local seq_num_5 = buffer(5, 1):bitfield(0, 7) -- extract first 7 bits from byte 5
    local seq_num_6 = buffer(6, 1):bitfield(7, 1) -- extract last bit from byte 6
    local seq_num_8 = buffer(8, 1):bitfield(5, 3) -- extract last 3 bits from byte 8

    seq_num = seq_num_5
    seq_num = seq_num + bit32.rshift(seq_num_6, -7)
    seq_num = seq_num + bit32.rshift(seq_num_8, -8)

    header_tree:add(pkt_seq_num, buffer(5, 4), seq_num, "Sequence Number: " .. seq_num)
    packet.seq_num = seq_num

    --- Packet Group ID
    local pkt_group_int = buffer(4, 1):bitfield(0, 5)
    pkt_group_int = pkt_group_int + bit32.rshift(buffer(5, 1):bitfield(7, 1), -5)
    
    local pkt_group_name = structure_lut[pkt_group_int] and structure_lut[pkt_group_int]["name"] or "???"

    header_tree:add(pkt_group, buffer(4, 1), pkt_group_int, "Group: " .. pkt_group_name .. " (" .. pkt_group_int .. ")")
    packet.group = pkt_group_name
    packet.group_int = pkt_group_int

    --- Packet type
    local pkt_type_int = 0
    local pkt_type_int_9 = buffer(9, 1):uint()
    local pkt_type_int_8 = buffer(8, 1):bitfield(0, 2)

    pkt_type_int = bit32.rshift(pkt_type_int_9, -2) + pkt_type_int_8

    local pkt_type_name = structure_lut[pkt_group_int] and structure_lut[pkt_group_int][pkt_type_int] and structure_lut[pkt_group_int][pkt_type_int].name or string.format("Unknown (Group: %d, ID: 0x%03x)", pkt_group_int, pkt_type_int)

    -- set this name into the info column
    -- taken from https://osqa-ask.wireshark.org/questions/34726/lua-script-update-info-field
    packet.pinfo.cols.info:set(pkt_type_name)
    packet.pinfo.cols.info:fence()

    header_tree:add(pkt_type, buffer(8, 2), pkt_type_name, "Type name: " .. pkt_type_name)
    header_tree:add(pkt_type_id, buffer(8, 2), pkt_type_int, "Type id: " .. pkt_type_int .. " (" .. string.format("0x%03x", pkt_type_int) .. ")")
    packet.type = pkt_type_name
    packet.type_int = pkt_type_int

    --- Packet length
    local pkt_length = 0

    local pkt_len_6 = buffer(6, 1):bitfield(0, 8) -- extract bits from byte 6
    local pkt_len_7 = buffer(7, 1):bitfield(0, 8) -- extract bits from byte 7

    pkt_length = bit32.rshift(pkt_len_6, 1) -- Right shift, to ignore the last bit (used by sequence number above)
    pkt_length = pkt_length + bit32.rshift(pkt_len_7, -7) -- Shift left for 7 bits to concatenate bits

    header_tree:add(pkt_len, buffer(6, 2), pkt_length, "Length: " .. pkt_length)
    packet.length = pkt_length

    --- Packet Transaction 
    local pkt_transaction = 0

    local pkt_trx_10 = buffer(10, 1):bitfield(0, 8) -- extract bits from byte 10
    local pkt_trx_11 = buffer(11, 1):bitfield(0, 8) -- extract bits from byte 11

    pkt_transaction = bit32.rshift(pkt_trx_10, 1) -- Right shift, to ignore the last bit 
    pkt_transaction = pkt_transaction + bit32.lshift(pkt_trx_11, 7) -- Shift left for 7 bits to concatenate bits

    header_tree:add(pkt_trx, buffer(10, 2), pkt_transaction, "Transaction: " .. pkt_transaction.. " (" .. string.format("0x%08x", pkt_transaction) .. ")")
    packet.trx = pkt_trx

    --- Acknowledgement Option
    local ack_opt = buffer(8, 1):bitfield(4, 1)

    header_tree:add(pkt_ack_opt, buffer(8, 1), ack_opt, "Acknowledgement Option: " .. ack_opt)
    packet.ack_opt = ack_opt

    -- Unknown bits/bytes
    local unknown_tree = header_tree:add("Unknown bits")
    unknown_tree:add(pkt_unknown_4, buffer(4, 1), buffer(4, 1):bitfield(5, 3), "Unknown Byte 4, Bits 5-7: " .. buffer(4, 1):bitfield(5, 3))
    unknown_tree:add(pkt_unknown_5, buffer(5, 1), buffer(5, 1):bitfield(7, 1), "Unknown Byte 5, Bit 7: " .. buffer(5, 1):bitfield(7, 1))
    unknown_tree:add(pkt_unknown_8, buffer(8, 1), buffer(8, 1):bitfield(2, 2), "Unknown Byte 8, Bits 2-3: " .. buffer(8, 1):bitfield(2, 2))
    unknown_tree:add(pkt_unknown_10, buffer(10, 1), buffer(10, 1):bitfield(7, 1), "Unknown Byte 10, Bit 7: " .. buffer(10, 1):bitfield(7, 1))

    --- DATA
    -- Is there even more data?
    if packet.total_length > 12 then
        local message_type_info = structure_lut[packet.group_int] and structure_lut[packet.group_int][packet.type_int] or nil

        local data_tree = ari_tree:add("Data", buffer(12))
        packet.tlvs = {}

        --- TLVs
        local cur_tlv = 0 -- The current TLV that we are parsing
        local cur_tlv_byte = 12 -- 12 is the first TLV / Data byte

        while (cur_tlv_byte < packet.total_length) do
            local tlv_tree = data_tree:add(buffer(cur_tlv_byte), "")
            
            local tlv = dissect_tlv(tlv_tree, packet, cur_tlv_byte, message_type_info)

            packet.tlvs[#packet.tlvs+1] = tlv

            local tlv_data_length = tlv and tlv.length or 0

            tlv_tree:set_len(4 + tlv_data_length)
            tlv_tree:prepend_text("TLV " .. (tlv and tlv.id or '?'))

            -- Calculate next byte offset, 4 Bytes Header + the returned tlv data length
            cur_tlv_byte = cur_tlv_byte + 4 + tlv_data_length
            cur_tlv = cur_tlv + 1
        end

        if message_type_info then
            local missing_mandatory_tlvs = {}

            for i = 1, #message_type_info.mtlvs do
                local id = message_type_info.mtlvs[i]
                local found = false

                for j = 1, #packet.tlvs do
                    if packet.tlvs[j].id == id then
                        found = true
                        break
                    end
                end

                if not found then
                    missing_mandatory_tlvs[#missing_mandatory_tlvs+1] = id
                end
            end

            if #missing_mandatory_tlvs > 0 then
                data_tree:add_tvb_expert_info(expert_missing_mandatory_tlv, buffer(), "ARI: Missing mandatory TLVs with ID: " .. table.concat(missing_mandatory_tlvs, ', '))
            end
        end
    end

    pinfo.cols.protocol = ari.name
end
