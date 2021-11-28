PARSER = {}

PARSER.codec_name = "IBIPlmnWAcT"

-- Has to be a local field, to access it in the parser method
local fields = {
    ibiplmnwact_plmn = ProtoField.string("ari.ibiplmnwact.plmn", "IBIPlmnWAcT PLMN", base.NONE),
    ibiplmnwact_rat = ProtoField.uint32("ari.ibiplmnwact.rat", "IBIPlmnWAcT RAT", base.DEC),
}

PARSER.fields = fields

function PARSER.parse(packet, tlv_tree, cur_tlv_data_byte, tlv_data_tvb, extra_information)
    local buffer = packet.buffer

    -- PLMN / IMSI
    local plmn_start = buffer(cur_tlv_data_byte, 2):le_uint()
    local plmn_end =  buffer(cur_tlv_data_byte + 2, 2):le_uint()
    local plmn = plmn_start .. "-" .. plmn_end
    tlv_tree:add(fields.ibiplmnwact_plmn, buffer(cur_tlv_data_byte, 4), plmn, "PLMN/IMSI: " .. plmn)

    -- Unknown
    tlv_tree:add(buffer(cur_tlv_data_byte + 4, 4), "Unknown")

    -- RAT
    local rat = buffer(cur_tlv_data_byte + 8, 4):le_uint()
    local rat_string = extra_information.asstring["IBIRat"][rat] or "???"
    tlv_tree:add(fields.ibiplmnwact_rat, buffer(cur_tlv_data_byte + 8, 4), rat, "RAT: " .. rat_string .. " (" .. rat .. ")")

    return true
end
