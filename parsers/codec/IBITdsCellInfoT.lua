PARSER = {}

-- Just a guess, we have not been able to validate this on real data yet
PARSER.codec_name = "IBITdsCellInfoT"

-- Has to be a local field, to access it in the parser method
local fields = {
    ibitdscellinfot_index = ProtoField.uint32("ari.ibitdscellinfot.index", "IBITdsCellInfoT Index", base.DEC),
    ibitdscellinfot_mcc = ProtoField.uint32("ari.ibitdscellinfot.mcc", "IBITdsCellInfoT MCC", base.DEC),
    ibitdscellinfot_mnc = ProtoField.uint32("ari.ibitdscellinfot.mnc", "IBITdsCellInfoT MNC", base.DEC),
    ibitdscellinfot_band_info = ProtoField.uint32("ari.ibitdscellinfot.band_info", "IBITdsCellInfoT Band info", base.DEC),
    ibitdscellinfot_area_code = ProtoField.uint32("ari.ibitdscellinfot.area_code", "IBITdsCellInfoT Area code", base.DEC),
    ibitdscellinfot_unknown = ProtoField.bytes("ari.ibitdscellinfot.unknown", "Unknown", base.SPACE),
    ibitdscellinfot_cell_id = ProtoField.uint32("ari.ibitdscellinfot.cell_id", "IBITdsCellInfoT Cell ID", base.DEC),
    ibitdscellinfot_earfcn = ProtoField.uint32("ari.ibitdscellinfot.earfcn", "IBITdsCellInfoT EARFCN", base.DEC),
    ibitdscellinfot_psc = ProtoField.uint32("ari.ibitdscellinfot.psc", "IBITdsCellInfoT Primary Synchronization Code", base.DEC),
    ibitdscellinfot_latitude = ProtoField.uint32("ari.ibitdscellinfot.latitude", "IBITdsCellInfoT Latitude", base.DEC),
    ibitdscellinfot_longitude = ProtoField.uint32("ari.ibitdscellinfot.longitude", "IBITdsCellInfoT Longitude", base.DEC),
}

PARSER.fields = fields

function PARSER.parse(packet, tlv_tree, cur_tlv_data_byte, tlv_data_tvb, extra_information)
    local buffer = packet.buffer

    -- Index
    local index = buffer(cur_tlv_data_byte, 2):le_uint()
    tlv_tree:add(fields.ibitdscellinfot_index, buffer(cur_tlv_data_byte, 2), index, "Index: " .. index)
    cur_tlv_data_byte = cur_tlv_data_byte + 2

    -- MCC
    local mcc = buffer(cur_tlv_data_byte, 2):le_uint()
    tlv_tree:add(fields.ibitdscellinfot_mcc, buffer(cur_tlv_data_byte, 2), mcc, "MCC: " .. mcc)
    cur_tlv_data_byte = cur_tlv_data_byte + 2

    -- MNC
    local mnc = buffer(cur_tlv_data_byte, 2):le_uint()
    tlv_tree:add(fields.ibitdscellinfot_mnc, buffer(cur_tlv_data_byte, 2), mnc, "MNC: " .. mnc)
    cur_tlv_data_byte = cur_tlv_data_byte + 2

    -- Band Info
    local band_info = buffer(cur_tlv_data_byte, 2):le_uint()
    tlv_tree:add(fields.ibitdscellinfot_band_info, buffer(cur_tlv_data_byte, 2), band_info, "Band Info: " .. band_info)
    cur_tlv_data_byte = cur_tlv_data_byte + 2

    -- Area Code
    local area_code = buffer(cur_tlv_data_byte, 2):le_uint()
    tlv_tree:add(fields.ibitdscellinfot_area_code, buffer(cur_tlv_data_byte, 2), area_code, "Area Code: " .. area_code)
    cur_tlv_data_byte = cur_tlv_data_byte + 2

    -- Unknown
    tlv_tree:add(fields.ibitdscellinfot_unknown, buffer(cur_tlv_data_byte, 2))
    cur_tlv_data_byte = cur_tlv_data_byte + 2

    -- Cell ID
    local cell_id = buffer(cur_tlv_data_byte, 4):le_uint()
    tlv_tree:add(fields.ibitdscellinfot_cell_id, buffer(cur_tlv_data_byte, 4), cell_id, "Cell ID: " .. cell_id)
    cur_tlv_data_byte = cur_tlv_data_byte + 4

    -- EARFCN
    local earfcn = buffer(cur_tlv_data_byte, 2):le_uint()
    tlv_tree:add(fields.ibitdscellinfot_earfcn, buffer(cur_tlv_data_byte, 2), earfcn, "EARFCN: " .. earfcn)
    cur_tlv_data_byte = cur_tlv_data_byte + 2

    -- Primary Synchronization Code
    local psc = buffer(cur_tlv_data_byte, 2):le_uint()
    tlv_tree:add(fields.ibitdscellinfot_psc, buffer(cur_tlv_data_byte, 2), psc, "Primary Synchronization Code: " .. psc)
    cur_tlv_data_byte = cur_tlv_data_byte + 2

    -- Latitude
    local latitude = buffer(cur_tlv_data_byte, 4):le_uint()
    tlv_tree:add(fields.ibitdscellinfot_latitude, buffer(cur_tlv_data_byte, 4), latitude, "Latitude: " .. latitude)
    cur_tlv_data_byte = cur_tlv_data_byte + 4

    -- Longitude
    local longitude = buffer(cur_tlv_data_byte, 4):le_uint()
    tlv_tree:add(fields.ibitdscellinfot_longitude, buffer(cur_tlv_data_byte, 4), longitude, "Longitude: " .. longitude)
    cur_tlv_data_byte = cur_tlv_data_byte + 4

    return true
end
