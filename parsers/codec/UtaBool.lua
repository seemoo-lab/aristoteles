PARSER = {}

PARSER.codec_name = "UtaBool"

-- Has to be a local field, to access it in the parser method
local fields = {
    utabool_value = ProtoField.bool("ari.utabool.value", "UtaBool value"),
}

PARSER.fields = fields

function PARSER.parse(packet, tlv_tree, cur_tlv_data_byte, tlv_data_tvb, extra_information)
    local val = tlv_data_tvb:le_uint() == 1
    local val_text = val and "True" or "False"

    tlv_tree:add(fields.utabool_value, tlv_data_tvb, val, "Value: " .. val_text)

    return true
end
