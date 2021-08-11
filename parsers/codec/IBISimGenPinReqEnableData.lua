PARSER = {}

PARSER.codec_name = "IBISimGenPinReqEnableData"

-- Has to be a local field, to access it in the parser method
local fields = {
    ibisimgenpinreqenabledata_pin = ProtoField.string("ari.ibisimgenpinreqenabledata.pin", "IBISimGenPinReqEnableData PIN", base.NONE),
}

PARSER.fields = fields

function PARSER.parse(packet, tlv_tree, cur_tlv_data_byte, tlv_data_tvb, extra_information)
    local buffer = packet.buffer
    
    -- PIN
    local pin = buffer(cur_tlv_data_byte, 8):string()
    tlv_tree:add(fields.ibisimgenpinreqenabledata_pin, buffer(cur_tlv_data_byte, 8), pin, "PIN: " .. pin)

    -- Unknown data
    tlv_tree:add(buffer(cur_tlv_data_byte + 8, 4), "Unknown")

    return true
end
