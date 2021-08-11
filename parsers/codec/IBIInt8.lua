PARSER = {}

PARSER.codec_name = "IBIInt8"

-- Has to be a local field, to access it in the parser method
local fields = {
    ibiint8_value = ProtoField.int8("ari.ibiint8.value", "IBIInt8 value", base.DEC),
}

PARSER.fields = fields

-- Amount of bytes this data format is capable of / encoded in.
PARSER.length = 1

function PARSER.parse(packet, tlv_tree, cur_tlv_data_byte, tlv_data_tvb, extra_information)
    local num = tlv_data_tvb:le_int()

    tlv_tree:add(fields.ibiint8_value, tlv_data_tvb, num, "Value: " .. num)

    return true
end
