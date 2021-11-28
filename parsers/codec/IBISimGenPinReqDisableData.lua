PARSER = {}

PARSER.codec_name = "IBISimGenPinReqDisableData"

-- Has to be a local field, to access it in the parser method
local fields = {
    ibisimgenpinreqdisabledata_pin = ProtoField.string("ari.ibisimgenpinreqdisabledata.pin", "IBISimGenPinReqDisableData PIN", base.NONE),
}

PARSER.fields = fields

function PARSER.parse(packet, tlv_tree, cur_tlv_data_byte, tlv_data_tvb, extra_information)
    local buffer = packet.buffer

    -- PIN
    local pin = buffer(cur_tlv_data_byte, 8):string()
    tlv_tree:add(fields.ibisimgenpinreqdisabledata_pin, buffer(cur_tlv_data_byte, 8), pin, "PIN: " .. pin)

    -- Unknown data
    tlv_tree:add(buffer(cur_tlv_data_byte + 8, 4), "Unknown")

    return true
end
