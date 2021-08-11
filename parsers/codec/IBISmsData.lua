PARSER = {}

PARSER.codec_name = "IBISmsData"

-- Has to be a local field, to access it in the parser method
local fields = {}

PARSER.fields = fields

function PARSER.parse(packet, tlv_tree, cur_tlv_data_byte, tlv_data_tvb, extra_information)
    local buffer = packet.buffer

    --- SMS decode
    local smsDissector = Dissector.get("gsm_sms")

    -- TODO: WHY? And why does it want to inspect the whole length until the end even if there is no more data / other TLVs?????
    local offset = 13
    smsDissector:call(buffer(cur_tlv_data_byte + offset):tvb(), packet.pinfo, tlv_tree)

    return true
end
