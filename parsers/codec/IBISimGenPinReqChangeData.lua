PARSER = {}

PARSER.codec_name = "IBISimGenPinReqChangeData"

-- Has to be a local field, to access it in the parser method
local fields = {
    ibisimgenpinreqchangedata_old_pin = ProtoField.string("ari.ibisimgenpinreqchangedata.old_pin", "IBISimGenPinReqChangeData PIN (previous)", base.NONE),
    ibisimgenpinreqchangedata_new_pin = ProtoField.string("ari.ibisimgenpinreqchangedata.new_pin", "IBISimGenPinReqChangeData PIN (new)", base.NONE),
}

PARSER.fields = fields

function PARSER.parse(packet, tlv_tree, cur_tlv_data_byte, tlv_data_tvb, extra_information)
    local buffer = packet.buffer
    
    -- Old PIN
    local old_pin = buffer(cur_tlv_data_byte, 8):string()
    tlv_tree:add(fields.ibisimgenpinreqchangedata_old_pin, buffer(cur_tlv_data_byte, 8), old_pin, "Old PIN: " .. old_pin)

    -- New PIN
    local new_pin = buffer(cur_tlv_data_byte + 8, 8):string()
    tlv_tree:add(fields.ibisimgenpinreqchangedata_new_pin, buffer(cur_tlv_data_byte + 8, 8), new_pin, "New PIN: " .. new_pin)

    -- Unknown data
    tlv_tree:add(buffer(cur_tlv_data_byte + 16, 4), "Unknown")

    return true
end
