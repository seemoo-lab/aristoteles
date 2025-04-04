PARSER = {}

PARSER.codec_name = "IBINrCellInfoT"

-- Has to be a local field, to access it in the parser method
local fields = {
    ibinrcellinfot_index = ProtoField.uint32("ari.ibinrcellinfot.index", "IBINrCellInfoT Index", base.DEC),
    ibinrcellinfot_mcc = ProtoField.uint32("ari.ibinrcellinfot.mcc", "IBINrCellInfoT MCC", base.DEC),
    ibinrcellinfot_mnc = ProtoField.uint32("ari.ibinrcellinfot.mnc", "IBINrCellInfoT MNC", base.DEC),
    ibinrcellinfot_band_info = ProtoField.uint32("ari.ibinrcellinfot.band_info", "IBINrCellInfoT Band info", base.DEC),
    ibinrcellinfot_area_code = ProtoField.uint32("ari.ibinrcellinfot.area_code", "IBINrCellInfoT Area code", base.DEC),
    ibinrcellinfot_cell_id = ProtoField.uint64("ari.ibinrcellinfot.cell_id", "IBINrCellInfoT Cell ID", base.DEC),
    ibinrcellinfot_earfcn = ProtoField.uint32("ari.ibinrcellinfot.earfcn", "IBINrCellInfoT EARFCN", base.DEC),
    ibinrcellinfot_pid = ProtoField.uint32("ari.ibinrcellinfot.pid", "IBINrCellInfoT PID", base.DEC),
    ibinrcellinfot_latitude = ProtoField.uint32("ari.ibinrcellinfot.latitude", "IBINrCellInfoT Latitude", base.DEC),
    ibinrcellinfot_longitude = ProtoField.uint32("ari.ibinrcellinfot.longitude", "IBINrCellInfoT Longitude", base.DEC),
    ibinrcellinfot_bandwidth = ProtoField.uint32("ari.ibinrcellinfot.bandwidth", "IBINrCellInfoT Bandwidth", base.DEC),
    ibinrcellinfot_scs = ProtoField.uint32("ari.ibinrcellinfot.scs", "IBINrCellInfoT SCS", base.DEC),
    ibinrcellinfot_gscn = ProtoField.uint32("ari.ibinrcellinfot.gscn", "IBINrCellInfoT GSCN", base.DEC),
    ibinrcellinfot_bwp_support = ProtoField.uint32("ari.ibinrcellinfot.bwp_support", "IBINrCellInfoT BWP Support", base.DEC),
    ibinrcellinfot_throughput = ProtoField.uint32("ari.ibinrcellinfot.throughput", "IBINrCellInfoT Throughput", base.DEC),
    ibinrcellinfot_p_max = ProtoField.uint32("ari.ibinrcellinfot.pmax", "IBINrCellInfoT pMax", base.DEC),
    ibinrcellinfot_unknown = ProtoField.bytes("ari.ibinrcellinfot.unknown", "Unknown", base.SPACE)
}

PARSER.fields = fields

function PARSER.parse(packet, tlv_tree, cur_tlv_data_byte, tlv_data_tvb, extra_information)
    local buffer = packet.buffer

    -- Index
    local index = buffer(cur_tlv_data_byte, 4):le_uint()
    tlv_tree:add(fields.ibinrcellinfot_index, buffer(cur_tlv_data_byte, 4), index, "Index: " .. index)
    cur_tlv_data_byte = cur_tlv_data_byte + 4

    -- MCC
    local mcc = buffer(cur_tlv_data_byte, 2):le_uint()
    tlv_tree:add(fields.ibinrcellinfot_mcc, buffer(cur_tlv_data_byte, 2), mcc, "MCC: " .. mcc)
    cur_tlv_data_byte = cur_tlv_data_byte + 2

    -- MNC
    local mnc = buffer(cur_tlv_data_byte, 2):le_uint()
    tlv_tree:add(fields.ibinrcellinfot_mnc, buffer(cur_tlv_data_byte, 2), mnc, "MNC: " .. mnc)
    cur_tlv_data_byte = cur_tlv_data_byte + 2

    -- Band Info
    local band_info = buffer(cur_tlv_data_byte, 4):le_uint()
    tlv_tree:add(fields.ibinrcellinfot_band_info, buffer(cur_tlv_data_byte, 4), band_info, "Band Info: " .. band_info)
    cur_tlv_data_byte = cur_tlv_data_byte + 4

    -- Area Code
    local area_code = buffer(cur_tlv_data_byte, 4):le_uint()
    tlv_tree:add(fields.ibinrcellinfot_area_code, buffer(cur_tlv_data_byte, 4), area_code, "Area Code: " .. area_code)
    cur_tlv_data_byte = cur_tlv_data_byte + 4

    -- Cell ID
    local cell_id = buffer(cur_tlv_data_byte, 8):le_uint64()
    tlv_tree:add(fields.ibinrcellinfot_cell_id, buffer(cur_tlv_data_byte, 8), cell_id, "Cell ID: " .. tostring(cell_id))
    cur_tlv_data_byte = cur_tlv_data_byte + 8

    -- EARFCN
    local earfcn = buffer(cur_tlv_data_byte, 4):le_uint()
    tlv_tree:add(fields.ibinrcellinfot_earfcn, buffer(cur_tlv_data_byte, 4), earfcn, "EARFCN: " .. earfcn)
    cur_tlv_data_byte = cur_tlv_data_byte + 4

    -- PID
    local pid = buffer(cur_tlv_data_byte, 4):le_uint()
    tlv_tree:add(fields.ibinrcellinfot_pid, buffer(cur_tlv_data_byte, 4), pid, "PID: " .. pid)
    cur_tlv_data_byte = cur_tlv_data_byte + 4

    -- Latitude
    local latitude = buffer(cur_tlv_data_byte, 4):le_uint()
    tlv_tree:add(fields.ibinrcellinfot_latitude, buffer(cur_tlv_data_byte, 4), latitude, "Latitude: " .. latitude)
    cur_tlv_data_byte = cur_tlv_data_byte + 4

    -- Longitude
    local longitude = buffer(cur_tlv_data_byte, 4):le_uint()
    tlv_tree:add(fields.ibinrcellinfot_longitude, buffer(cur_tlv_data_byte, 4), longitude, "Longitude: " .. longitude)
    cur_tlv_data_byte = cur_tlv_data_byte + 4

    -- Bandwidth
    local bandwidth = buffer(cur_tlv_data_byte, 2):le_uint()
    tlv_tree:add(fields.ibinrcellinfot_bandwidth, buffer(cur_tlv_data_byte, 2), bandwidth, "Bandwidth: " .. bandwidth)
    cur_tlv_data_byte = cur_tlv_data_byte + 2

    -- scs
    local scs = buffer(cur_tlv_data_byte, 2):le_uint()
    tlv_tree:add(fields.ibinrcellinfot_scs, buffer(cur_tlv_data_byte, 2), scs, "SCS: " .. scs)
    cur_tlv_data_byte = cur_tlv_data_byte + 2

    -- gscn
    local gscn = buffer(cur_tlv_data_byte, 4):le_uint()
    tlv_tree:add(fields.ibinrcellinfot_gscn, buffer(cur_tlv_data_byte, 4), gscn, "GSCN: " .. gscn)
    cur_tlv_data_byte = cur_tlv_data_byte + 4

    -- bwpSupport
    local bwp_support = buffer(cur_tlv_data_byte, 2):le_uint()
    tlv_tree:add(fields.ibinrcellinfot_bwp_support, buffer(cur_tlv_data_byte, 2), bwp_support, "bwp Support: " .. bwp_support)
    cur_tlv_data_byte = cur_tlv_data_byte + 2

    -- throughput
    local throughput = buffer(cur_tlv_data_byte, 4):le_uint()
    tlv_tree:add(fields.ibinrcellinfot_throughput, buffer(cur_tlv_data_byte, 4), throughput, "Throughput: " .. throughput)
    cur_tlv_data_byte = cur_tlv_data_byte + 4
    
    -- pMax
    local p_max = buffer(cur_tlv_data_byte, 2):le_uint()
    tlv_tree:add(fields.ibinrcellinfot_p_max, buffer(cur_tlv_data_byte, 2), p_max, "pMax: " .. p_max)
    cur_tlv_data_byte = cur_tlv_data_byte + 2

    -- Unknown
    tlv_tree:add(fields.ibinrcellinfot_unknown, buffer(cur_tlv_data_byte, 48))
    cur_tlv_data_byte = cur_tlv_data_byte + 48
    
    return true
end
