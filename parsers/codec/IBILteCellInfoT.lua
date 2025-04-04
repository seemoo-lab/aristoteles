PARSER = {}

PARSER.codec_name = "IBILteCellInfoT"

-- Has to be a local field, to access it in the parser method
local fields = {
    ibiltecellinfot_index = ProtoField.uint32("ari.ibiltecellinfot.index", "IBILteCellInfoT Index", base.DEC),
    ibiltecellinfot_mcc = ProtoField.uint32("ari.ibiltecellinfot.mcc", "IBILteCellInfoT MCC", base.DEC),
    ibiltecellinfot_mnc = ProtoField.uint32("ari.ibiltecellinfot.mnc", "IBILteCellInfoT MNC", base.DEC),
    ibiltecellinfot_band_info = ProtoField.uint32("ari.ibiltecellinfot.band_info", "IBILteCellInfoT Band info", base.DEC),
    ibiltecellinfot_area_code = ProtoField.uint32("ari.ibiltecellinfot.area_code", "IBILteCellInfoT Area code", base.DEC),
    ibiltecellinfot_cell_id = ProtoField.uint32("ari.ibiltecellinfot.cell_id", "IBILteCellInfoT Cell ID", base.DEC),
    ibiltecellinfot_earfcn = ProtoField.uint32("ari.ibiltecellinfot.earfcn", "IBILteCellInfoT EARFCN", base.DEC),
    ibiltecellinfot_pid = ProtoField.uint32("ari.ibiltecellinfot.pid", "IBILteCellInfoT PID", base.DEC),
    ibiltecellinfot_latitude = ProtoField.uint32("ari.ibiltecellinfot.latitude", "IBILteCellInfoT Latitude", base.DEC),
    ibiltecellinfot_longitude = ProtoField.uint32("ari.ibiltecellinfot.longitude", "IBILteCellInfoT Longitude", base.DEC),
    ibiltecellinfot_bandwidth = ProtoField.uint32("ari.ibiltecellinfot.bandwidth", "IBILteCellInfoT Bandwidth", base.DEC),
    ibiltecellinfot_unknown = ProtoField.bytes("ari.ibiltecellinfot.unknown", "Unknown", base.SPACE)
}

PARSER.fields = fields

function PARSER.parse(packet, tlv_tree, cur_tlv_data_byte, tlv_data_tvb, extra_information)
    local buffer = packet.buffer

    -- Index
    local index = buffer(cur_tlv_data_byte, 2):le_uint()
    tlv_tree:add(fields.ibiltecellinfot_index, buffer(cur_tlv_data_byte, 2), index, "Index: " .. index)
    cur_tlv_data_byte = cur_tlv_data_byte + 2

    -- MCC
    local mcc = buffer(cur_tlv_data_byte, 2):le_uint()
    tlv_tree:add(fields.ibiltecellinfot_mcc, buffer(cur_tlv_data_byte, 2), mcc, "MCC: " .. mcc)
    cur_tlv_data_byte = cur_tlv_data_byte + 2

    -- MNC
    local mnc = buffer(cur_tlv_data_byte, 2):le_uint()
    tlv_tree:add(fields.ibiltecellinfot_mnc, buffer(cur_tlv_data_byte, 2), mnc, "MNC: " .. mnc)
    cur_tlv_data_byte = cur_tlv_data_byte + 2

    -- Band Info
    local band_info = buffer(cur_tlv_data_byte, 2):le_uint()
    tlv_tree:add(fields.ibiltecellinfot_band_info, buffer(cur_tlv_data_byte, 2), band_info, "Band Info: " .. band_info)
    cur_tlv_data_byte = cur_tlv_data_byte + 2

    -- Area Code
    local area_code = buffer(cur_tlv_data_byte, 4):le_uint()
    tlv_tree:add(fields.ibiltecellinfot_area_code, buffer(cur_tlv_data_byte, 4), area_code, "Area Code: " .. area_code)
    cur_tlv_data_byte = cur_tlv_data_byte + 4

    -- Cell ID
    local cell_id = buffer(cur_tlv_data_byte, 4):le_uint()
    tlv_tree:add(fields.ibiltecellinfot_cell_id, buffer(cur_tlv_data_byte, 4), cell_id, "Cell ID: " .. cell_id)
    cur_tlv_data_byte = cur_tlv_data_byte + 4

    -- EARFCN
    local earfcn = buffer(cur_tlv_data_byte, 2):le_uint()
    tlv_tree:add(fields.ibiltecellinfot_earfcn, buffer(cur_tlv_data_byte, 2), earfcn, "EARFCN: " .. earfcn)
    cur_tlv_data_byte = cur_tlv_data_byte + 2

    -- PID
    local pid = buffer(cur_tlv_data_byte, 2):le_uint()
    tlv_tree:add(fields.ibiltecellinfot_pid, buffer(cur_tlv_data_byte, 2), pid, "PID: " .. pid)
    cur_tlv_data_byte = cur_tlv_data_byte + 2

    -- Latitude
    local latitude = buffer(cur_tlv_data_byte, 4):le_uint()
    tlv_tree:add(fields.ibiltecellinfot_latitude, buffer(cur_tlv_data_byte, 4), latitude, "Latitude: " .. latitude)
    cur_tlv_data_byte = cur_tlv_data_byte + 4

    -- Longitude
    local longitude = buffer(cur_tlv_data_byte, 4):le_uint()
    tlv_tree:add(fields.ibiltecellinfot_longitude, buffer(cur_tlv_data_byte, 4), longitude, "Longitude: " .. longitude)
    cur_tlv_data_byte = cur_tlv_data_byte + 4

    -- Bandwidth
    local bandwidth = buffer(cur_tlv_data_byte, 1):le_uint()
    tlv_tree:add(fields.ibiltecellinfot_bandwidth, buffer(cur_tlv_data_byte, 1), bandwidth, "Bandwidth: " .. bandwidth)
    cur_tlv_data_byte = cur_tlv_data_byte + 1

    -- Unknown
    tlv_tree:add(fields.ibiltecellinfot_unknown, buffer(cur_tlv_data_byte, 3))
    cur_tlv_data_byte = cur_tlv_data_byte + 3

    return true
end
