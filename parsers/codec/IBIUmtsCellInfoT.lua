PARSER = {}

-- Just a guess, we have not been able to validate this on real data yet
PARSER.codec_name = "IBIUmtsCellInfoT"

-- Has to be a local field, to access it in the parser method
local fields = {
    ibiumtscellinfot_index = ProtoField.uint32("ari.ibiumtscellinfot.index", "IBIUmtsCellInfoT Index", base.DEC),
    ibiumtscellinfot_mcc = ProtoField.uint32("ari.ibiumtscellinfot.mcc", "IBIUmtsCellInfoT MCC", base.DEC),
    ibiumtscellinfot_mnc = ProtoField.uint32("ari.ibiumtscellinfot.mnc", "IBIUmtsCellInfoT MNC", base.DEC),
    ibiumtscellinfot_band_info = ProtoField.uint32("ari.ibiumtscellinfot.band_info", "IBIUmtsCellInfoT Band info", base.DEC),
    ibiumtscellinfot_area_code = ProtoField.uint32("ari.ibiumtscellinfot.area_code", "IBIUmtsCellInfoT Area code", base.DEC),
    ibiumtscellinfot_unknown = ProtoField.bytes("ari.ibiumtscellinfot.unknown", "Unknown", base.SPACE),
    ibiumtscellinfot_cell_id = ProtoField.uint32("ari.ibiumtscellinfot.cell_id", "IBIUmtsCellInfoT Cell ID", base.DEC),
    ibiumtscellinfot_earfcn = ProtoField.uint32("ari.ibiumtscellinfot.earfcn", "IBIUmtsCellInfoT EARFCN", base.DEC),
    ibiumtscellinfot_psc = ProtoField.uint32("ari.ibiumtscellinfot.psc", "IBIUmtsCellInfoT Primary Synchronization Code", base.DEC),
    ibiumtscellinfot_latitude = ProtoField.uint32("ari.ibiumtscellinfot.latitude", "IBIUmtsCellInfoT Latitude", base.DEC),
    ibiumtscellinfot_longitude = ProtoField.uint32("ari.ibiumtscellinfot.longitude", "IBIUmtsCellInfoT Longitude", base.DEC),
}

PARSER.fields = fields

function PARSER.parse(packet, tlv_tree, cur_tlv_data_byte, tlv_data_tvb, extra_information)
    local buffer = packet.buffer

    -- Index
    local index = buffer(cur_tlv_data_byte, 2):le_uint()
    tlv_tree:add(fields.ibiumtscellinfot_index, buffer(cur_tlv_data_byte, 2), index, "Index: " .. index)
    cur_tlv_data_byte = cur_tlv_data_byte + 2

    -- MCC
    local mcc = buffer(cur_tlv_data_byte, 2):le_uint()
    tlv_tree:add(fields.ibiumtscellinfot_mcc, buffer(cur_tlv_data_byte, 2), mcc, "MCC: " .. mcc)
    cur_tlv_data_byte = cur_tlv_data_byte + 2

    -- MNC
    local mnc = buffer(cur_tlv_data_byte, 2):le_uint()
    tlv_tree:add(fields.ibiumtscellinfot_mnc, buffer(cur_tlv_data_byte, 2), mnc, "MNC: " .. mnc)
    cur_tlv_data_byte = cur_tlv_data_byte + 2

    -- Band Info
    local band_info = buffer(cur_tlv_data_byte, 2):le_uint()
    tlv_tree:add(fields.ibiumtscellinfot_band_info, buffer(cur_tlv_data_byte, 2), band_info, "Band Info: " .. band_info)
    cur_tlv_data_byte = cur_tlv_data_byte + 2

    -- Area Code
    local area_code = buffer(cur_tlv_data_byte, 2):le_uint()
    tlv_tree:add(fields.ibiumtscellinfot_area_code, buffer(cur_tlv_data_byte, 2), area_code, "Area Code: " .. area_code)
    cur_tlv_data_byte = cur_tlv_data_byte + 2

    -- Unknown
    tlv_tree:add(fields.ibiumtscellinfot_unknown, buffer(cur_tlv_data_byte, 2))
    cur_tlv_data_byte = cur_tlv_data_byte + 2

    -- Cell ID
    local cell_id = buffer(cur_tlv_data_byte, 4):le_uint()
    tlv_tree:add(fields.ibiumtscellinfot_cell_id, buffer(cur_tlv_data_byte, 4), cell_id, "Cell ID: " .. cell_id)
    cur_tlv_data_byte = cur_tlv_data_byte + 4

    -- EARFCN
    local earfcn = buffer(cur_tlv_data_byte, 2):le_uint()
    tlv_tree:add(fields.ibiumtscellinfot_earfcn, buffer(cur_tlv_data_byte, 2), earfcn, "EARFCN: " .. earfcn)
    cur_tlv_data_byte = cur_tlv_data_byte + 2

    -- Primary Synchronization Code
    local psc = buffer(cur_tlv_data_byte, 2):le_uint()
    tlv_tree:add(fields.ibiumtscellinfot_psc, buffer(cur_tlv_data_byte, 2), psc, "Primary Synchronization Code: " .. psc)
    cur_tlv_data_byte = cur_tlv_data_byte + 2

    -- Latitude
    local latitude = buffer(cur_tlv_data_byte, 4):le_uint()
    tlv_tree:add(fields.ibiumtscellinfot_latitude, buffer(cur_tlv_data_byte, 4), latitude, "Latitude: " .. latitude)
    cur_tlv_data_byte = cur_tlv_data_byte + 4

    -- Longitude
    local longitude = buffer(cur_tlv_data_byte, 4):le_uint()
    tlv_tree:add(fields.ibiumtscellinfot_longitude, buffer(cur_tlv_data_byte, 4), longitude, "Longitude: " .. longitude)
    cur_tlv_data_byte = cur_tlv_data_byte + 4

    return true
end
