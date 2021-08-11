PARSER = {}

PARSER.codec_name = "UtaUInt16"

-- Has to be a local field, to access it in the parser method
local fields = {
    utauint16_value = ProtoField.uint16("ari.utauint16.value", "UtaUInt16 value", base.DEC),
}

PARSER.fields = fields

-- Amount of bytes this data format is capable of / encoded in.
PARSER.length = 2

function PARSER.parse(packet, tlv_tree, cur_tlv_data_byte, tlv_data_tvb, extra_information)
    local num = tlv_data_tvb:le_uint()

    tlv_tree:add(fields.utauint16_value, tlv_data_tvb, num, "Value: " .. num)

    return true
end
