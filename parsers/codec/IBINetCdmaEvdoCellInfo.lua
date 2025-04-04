PARSER = {}

-- Just a guess, we have not been able to validate this on real data yet
PARSER.codec_name = "IBINetCdmaEvdoCellInfo"

-- Has to be a local field, to access it in the parser method
local fields = {
    ibicdmaevdocellinfot_index = ProtoField.uint32("ari.ibicdmaevdocellinfot.index", "IBINetCdmaEvdoCellInfo Index", base.DEC),
    ibicdmaevdocellinfot_mcc = ProtoField.uint32("ari.ibicdmaevdocellinfot.mcc", "IBINetCdmaEvdoCellInfo MCC", base.DEC),
    ibicdmaevdocellinfot_sectorid = ProtoField.bytes("ari.ibicdmaevdocellinfot.sectorid", "IBINetCdmaEvdoCellInfo Sector ID", base.SPACE),
    ibicdmaevdocellinfot_band_info = ProtoField.uint32("ari.ibicdmaevdocellinfot.band_info", "IBINetCdmaEvdoCellInfo Band info", base.DEC),
    ibicdmaevdocellinfot_area_code = ProtoField.uint32("ari.ibicdmaevdocellinfot.area_code", "IBINetCdmaEvdoCellInfo Area code", base.DEC),
    ibicdmaevdocellinfot_earfcn = ProtoField.uint32("ari.ibicdmaevdocellinfot.earfcn", "IBINetCdmaEvdoCellInfo EARFCN", base.DEC),
    ibicdmaevdocellinfot_latitude = ProtoField.uint32("ari.ibicdmaevdocellinfot.latitude", "IBINetCdmaEvdoCellInfo Latitude", base.DEC),
    ibicdmaevdocellinfot_longitude = ProtoField.uint32("ari.ibicdmaevdocellinfot.longitude", "IBINetCdmaEvdoCellInfo Longitude", base.DEC),
    ibicdmaevdocellinfot_unknown = ProtoField.bytes("ari.ibicdmaevdocellinfot.unknown", "Unknown", base.SPACE)
}

PARSER.fields = fields

function PARSER.parse(packet, tlv_tree, cur_tlv_data_byte, tlv_data_tvb, extra_information)
    local buffer = packet.buffer

    -- Index
    local index = buffer(cur_tlv_data_byte, 2):le_uint()
    tlv_tree:add(fields.ibicdmaevdocellinfot_index, buffer(cur_tlv_data_byte, 2), index, "Index: " .. index)
    cur_tlv_data_byte = cur_tlv_data_byte + 2

    -- MCC
    local mcc = buffer(cur_tlv_data_byte, 2):le_uint()
    tlv_tree:add(fields.ibicdmaevdocellinfot_mcc, buffer(cur_tlv_data_byte, 2), mcc, "MCC: " .. mcc)
    cur_tlv_data_byte = cur_tlv_data_byte + 2

    -- EARFCN
    local earfcn = buffer(cur_tlv_data_byte, 2):le_uint()
    tlv_tree:add(fields.ibicdmaevdocellinfot_earfcn, buffer(cur_tlv_data_byte, 2), earfcn, "EARFCN: " .. earfcn)
    cur_tlv_data_byte = cur_tlv_data_byte + 2

    -- Band Info
    local band_info = buffer(cur_tlv_data_byte, 2):le_uint()
    tlv_tree:add(fields.ibicdmaevdocellinfot_band_info, buffer(cur_tlv_data_byte, 2), band_info, "Band Info: " .. band_info)
    cur_tlv_data_byte = cur_tlv_data_byte + 2

    -- Sector ID
    tlv_tree:add(fields.ibicdmaevdocellinfot_sectorid, buffer(cur_tlv_data_byte, 16))
    cur_tlv_data_byte = cur_tlv_data_byte + 16

    -- Latitude
    local latitude = buffer(cur_tlv_data_byte, 4):le_uint()
    tlv_tree:add(fields.ibicdmaevdocellinfot_latitude, buffer(cur_tlv_data_byte, 4), latitude, "Latitude: " .. latitude)
    cur_tlv_data_byte = cur_tlv_data_byte + 4

    -- Longitude
    local longitude = buffer(cur_tlv_data_byte, 4):le_uint()
    tlv_tree:add(fields.ibicdmaevdocellinfot_longitude, buffer(cur_tlv_data_byte, 4), longitude, "Longitude: " .. longitude)
    cur_tlv_data_byte = cur_tlv_data_byte + 4

    -- Area Code
    local area_code = buffer(cur_tlv_data_byte, 2):le_uint()
    tlv_tree:add(fields.ibicdmaevdocellinfot_area_code, buffer(cur_tlv_data_byte, 2), area_code, "Area Code: " .. area_code)
    cur_tlv_data_byte = cur_tlv_data_byte + 2

    -- Unknown
    tlv_tree:add(fields.ibicdmaevdocellinfot_unknown, buffer(cur_tlv_data_byte, 18))
    cur_tlv_data_byte = cur_tlv_data_byte + 18

    return true
end
