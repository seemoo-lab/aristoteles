PARSER = {}

PARSER.codec_name = "IBIUInt8"

-- Has to be a local field, to access it in the parser method
local fields = {
    ibiuint8_value = ProtoField.uint8("ari.ibiuint8.value", "IBIUInt8 value", base.DEC),
}

PARSER.fields = fields

-- Amount of bytes this data format is capable of / encoded in.
PARSER.length = 1

function PARSER.parse(packet, tlv_tree, cur_tlv_data_byte, tlv_data_tvb, extra_information)
    local num = tlv_data_tvb:le_uint()

    tlv_tree:add(fields.ibiuint8_value, tlv_data_tvb, num, "Value: " .. num)

    return true
end
