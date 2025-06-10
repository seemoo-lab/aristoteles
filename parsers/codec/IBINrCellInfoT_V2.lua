PARSER = {}

PARSER.codec_name = "IBINrCellInfoT_V2"

-- Has to be a local field, to access it in the parser method
local fields = {
    ibinrcellinfotv2_index = ProtoField.uint32("ari.ibinrcellinfotv2.index", "IBINrCellInfoT_V2 Index", base.DEC),
    ibinrcellinfotv2_mcc = ProtoField.uint32("ari.ibinrcellinfotv2.mcc", "IBINrCellInfoT_V2 MCC", base.DEC),
    ibinrcellinfotv2_mnc = ProtoField.uint32("ari.ibinrcellinfotv2.mnc", "IBINrCellInfoT_V2 MNC", base.DEC),
    ibinrcellinfotv2_band_info = ProtoField.uint32("ari.ibinrcellinfotv2.band_info", "IBINrCellInfoT_V2 Band info", base.DEC),
    ibinrcellinfotv2_area_code = ProtoField.uint32("ari.ibinrcellinfotv2.area_code", "IBINrCellInfoT_V2 Area code", base.DEC),
    ibinrcellinfotv2_cell_id = ProtoField.uint64("ari.ibinrcellinfotv2.cell_id", "IBINrCellInfoT_V2 Cell ID", base.DEC),
    ibinrcellinfotv2_earfcn = ProtoField.uint32("ari.ibinrcellinfotv2.earfcn", "IBINrCellInfoT_V2 EARFCN", base.DEC),
    ibinrcellinfotv2_pid = ProtoField.uint32("ari.ibinrcellinfotv2.pid", "IBINrCellInfoT_V2 PID", base.DEC),
    ibinrcellinfotv2_latitude = ProtoField.uint32("ari.ibinrcellinfotv2.latitude", "IBINrCellInfoT_V2 Latitude", base.DEC),
    ibinrcellinfotv2_longitude = ProtoField.uint32("ari.ibinrcellinfotv2.longitude", "IBINrCellInfoT_V2 Longitude", base.DEC),
    ibinrcellinfotv2_bandwidth = ProtoField.uint32("ari.ibinrcellinfotv2.bandwidth", "IBINrCellInfoT_V2 Bandwidth", base.DEC),
    ibinrcellinfotv2_scs = ProtoField.uint32("ari.ibinrcellinfotv2.scs", "IBINrCellInfoT_V2 SCS", base.DEC),
    ibinrcellinfotv2_gscn = ProtoField.uint32("ari.ibinrcellinfotv2.gscn", "IBINrCellInfoT_V2 GSCN", base.DEC),
    ibinrcellinfotv2_bwp_support = ProtoField.uint32("ari.ibinrcellinfotv2.bwp_support", "IBINrCellInfoT_V2 BWP Support", base.DEC),
    ibinrcellinfotv2_throughput = ProtoField.uint32("ari.ibinrcellinfotv2.throughput", "IBINrCellInfoT_V2 Throughput", base.DEC),
    ibinrcellinfotv2_p_max = ProtoField.uint32("ari.ibinrcellinfotv2.pmax", "IBINrCellInfoT_V2 pMax", base.DEC),
    ibinrcellinfotv2_unknown = ProtoField.bytes("ari.ibinrcellinfotv2.unknown", "Unknown", base.SPACE)
}

PARSER.fields = fields

function PARSER.parse(packet, tlv_tree, cur_tlv_data_byte, tlv_data_tvb, extra_information)
    local buffer = packet.buffer

    -- Index
    local index = buffer(cur_tlv_data_byte, 4):le_uint()
    tlv_tree:add(fields.ibinrcellinfotv2_index, buffer(cur_tlv_data_byte, 4), index, "Index: " .. index)
    cur_tlv_data_byte = cur_tlv_data_byte + 4

    -- MCC
    local mcc = buffer(cur_tlv_data_byte, 2):le_uint()
    tlv_tree:add(fields.ibinrcellinfotv2_mcc, buffer(cur_tlv_data_byte, 2), mcc, "MCC: " .. mcc)
    cur_tlv_data_byte = cur_tlv_data_byte + 2

    -- MNC
    local mnc = buffer(cur_tlv_data_byte, 2):le_uint()
    tlv_tree:add(fields.ibinrcellinfotv2_mnc, buffer(cur_tlv_data_byte, 2), mnc, "MNC: " .. mnc)
    cur_tlv_data_byte = cur_tlv_data_byte + 2

    -- Band Info
    local band_info = buffer(cur_tlv_data_byte, 4):le_uint()
    tlv_tree:add(fields.ibinrcellinfotv2_band_info, buffer(cur_tlv_data_byte, 4), band_info, "Band Info: " .. band_info)
    cur_tlv_data_byte = cur_tlv_data_byte + 4

    -- Area Code
    local area_code = buffer(cur_tlv_data_byte, 4):le_uint()
    tlv_tree:add(fields.ibinrcellinfotv2_area_code, buffer(cur_tlv_data_byte, 4), area_code, "Area Code: " .. area_code)
    cur_tlv_data_byte = cur_tlv_data_byte + 4

    -- Cell ID
    local cell_id = buffer(cur_tlv_data_byte, 8):le_uint64()
    tlv_tree:add(fields.ibinrcellinfotv2_cell_id, buffer(cur_tlv_data_byte, 8), cell_id, "Cell ID: " .. tostring(cell_id))
    cur_tlv_data_byte = cur_tlv_data_byte + 8

    -- EARFCN
    local earfcn = buffer(cur_tlv_data_byte, 4):le_uint()
    tlv_tree:add(fields.ibinrcellinfotv2_earfcn, buffer(cur_tlv_data_byte, 4), earfcn, "EARFCN: " .. earfcn)
    cur_tlv_data_byte = cur_tlv_data_byte + 4

    -- PID
    local pid = buffer(cur_tlv_data_byte, 4):le_uint()
    tlv_tree:add(fields.ibinrcellinfotv2_pid, buffer(cur_tlv_data_byte, 4), pid, "PID: " .. pid)
    cur_tlv_data_byte = cur_tlv_data_byte + 4

    -- Latitude
    local latitude = buffer(cur_tlv_data_byte, 4):le_uint()
    tlv_tree:add(fields.ibinrcellinfotv2_latitude, buffer(cur_tlv_data_byte, 4), latitude, "Latitude: " .. latitude)
    cur_tlv_data_byte = cur_tlv_data_byte + 4

    -- Longitude
    local longitude = buffer(cur_tlv_data_byte, 4):le_uint()
    tlv_tree:add(fields.ibinrcellinfotv2_longitude, buffer(cur_tlv_data_byte, 4), longitude, "Longitude: " .. longitude)
    cur_tlv_data_byte = cur_tlv_data_byte + 4

    -- Bandwidth
    local bandwidth = buffer(cur_tlv_data_byte, 2):le_uint()
    tlv_tree:add(fields.ibinrcellinfotv2_bandwidth, buffer(cur_tlv_data_byte, 2), bandwidth, "Bandwidth: " .. bandwidth)
    cur_tlv_data_byte = cur_tlv_data_byte + 2

    -- scs
    local scs = buffer(cur_tlv_data_byte, 2):le_uint()
    tlv_tree:add(fields.ibinrcellinfotv2_scs, buffer(cur_tlv_data_byte, 2), scs, "SCS: " .. scs)
    cur_tlv_data_byte = cur_tlv_data_byte + 2

    -- gscn
    local gscn = buffer(cur_tlv_data_byte, 4):le_uint()
    tlv_tree:add(fields.ibinrcellinfotv2_gscn, buffer(cur_tlv_data_byte, 4), gscn, "GSCN: " .. gscn)
    cur_tlv_data_byte = cur_tlv_data_byte + 4

    -- bwpSupport
    local bwp_support = buffer(cur_tlv_data_byte, 2):le_uint()
    tlv_tree:add(fields.ibinrcellinfotv2_bwp_support, buffer(cur_tlv_data_byte, 2), bwp_support, "bwp Support: " .. bwp_support)
    cur_tlv_data_byte = cur_tlv_data_byte + 2

    -- throughput
    local throughput = buffer(cur_tlv_data_byte, 4):le_uint()
    tlv_tree:add(fields.ibinrcellinfotv2_throughput, buffer(cur_tlv_data_byte, 4), throughput, "Throughput: " .. throughput)
    cur_tlv_data_byte = cur_tlv_data_byte + 4
    
    -- pMax
    local p_max = buffer(cur_tlv_data_byte, 2):le_uint()
    tlv_tree:add(fields.ibinrcellinfotv2_p_max, buffer(cur_tlv_data_byte, 2), p_max, "pMax: " .. p_max)
    cur_tlv_data_byte = cur_tlv_data_byte + 2

    -- Unknown
    tlv_tree:add(fields.ibinrcellinfotv2_unknown, buffer(cur_tlv_data_byte, 64))
    cur_tlv_data_byte = cur_tlv_data_byte + 64

    return true
end
