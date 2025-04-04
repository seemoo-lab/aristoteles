PARSER = {}

PARSER.codec_name = "IBILteCellInfoR15"

-- Has to be a local field, to access it in the parser method
local fields = {
    ibiltecellinfor15_index = ProtoField.uint32("ari.ibiltecellinfor15.index", "IBILteCellInfoR15 Index", base.DEC),
    ibiltecellinfor15_mcc = ProtoField.uint32("ari.ibiltecellinfor15.mcc", "IBILteCellInfoR15 MCC", base.DEC),
    ibiltecellinfor15_mnc = ProtoField.uint32("ari.ibiltecellinfor15.mnc", "IBILteCellInfoR15 MNC", base.DEC),
    ibiltecellinfor15_band_info = ProtoField.uint32("ari.ibiltecellinfor15.band_info", "IBILteCellInfoR15 Band info", base.DEC),
    ibiltecellinfor15_area_code = ProtoField.uint32("ari.ibiltecellinfor15.area_code", "IBILteCellInfoR15 Area code", base.DEC),
    ibiltecellinfor15_cell_id = ProtoField.uint32("ari.ibiltecellinfor15.cell_id", "IBILteCellInfoR15 Cell ID", base.DEC),
    ibiltecellinfor15_earfcn = ProtoField.uint32("ari.ibiltecellinfor15.earfcn", "IBILteCellInfoR15 EARFCN", base.DEC),
    ibiltecellinfor15_pid = ProtoField.uint32("ari.ibiltecellinfor15.pid", "IBILteCellInfoR15 PID", base.DEC),
    ibiltecellinfor15_latitude = ProtoField.uint32("ari.ibiltecellinfor15.latitude", "IBILteCellInfoR15 Latitude", base.DEC),
    ibiltecellinfor15_longitude = ProtoField.uint32("ari.ibiltecellinfor15.longitude", "IBILteCellInfoR15 Longitude", base.DEC),
    ibiltecellinfor15_bandwidth = ProtoField.uint32("ari.ibiltecellinfor15.bandwidth", "IBILteCellInfoR15 Bandwidth", base.DEC),
    ibiltecellinfor15_deployment_type = ProtoField.uint32("ari.ibiltecellinfor15.deployment_type", "IBILteCellInfoR15 Deployment Type", base.DEC),
    ibiltecellinfor15_unknown = ProtoField.bytes("ari.ibiltecellinfor15.unknown", "Unknown", base.SPACE)
}

PARSER.fields = fields

function PARSER.parse(packet, tlv_tree, cur_tlv_data_byte, tlv_data_tvb, extra_information)
    local buffer = packet.buffer

    -- Index
    local index = buffer(cur_tlv_data_byte, 2):le_uint()
    tlv_tree:add(fields.ibiltecellinfor15_index, buffer(cur_tlv_data_byte, 2), index, "Index: " .. index)
    cur_tlv_data_byte = cur_tlv_data_byte + 2

    -- MCC
    local mcc = buffer(cur_tlv_data_byte, 2):le_uint()
    tlv_tree:add(fields.ibiltecellinfor15_mcc, buffer(cur_tlv_data_byte, 2), mcc, "MCC: " .. mcc)
    cur_tlv_data_byte = cur_tlv_data_byte + 2

    -- MNC
    local mnc = buffer(cur_tlv_data_byte, 2):le_uint()
    tlv_tree:add(fields.ibiltecellinfor15_mnc, buffer(cur_tlv_data_byte, 2), mnc, "MNC: " .. mnc)
    cur_tlv_data_byte = cur_tlv_data_byte + 2

    -- Band Info
    local band_info = buffer(cur_tlv_data_byte, 2):le_uint()
    tlv_tree:add(fields.ibiltecellinfor15_band_info, buffer(cur_tlv_data_byte, 2), band_info, "Band Info: " .. band_info)
    cur_tlv_data_byte = cur_tlv_data_byte + 2

    -- Area Code
    local area_code = buffer(cur_tlv_data_byte, 4):le_uint()
    tlv_tree:add(fields.ibiltecellinfor15_area_code, buffer(cur_tlv_data_byte, 4), area_code, "Area Code: " .. area_code)
    cur_tlv_data_byte = cur_tlv_data_byte + 4

    -- Cell ID
    local cell_id = buffer(cur_tlv_data_byte, 4):le_uint()
    tlv_tree:add(fields.ibiltecellinfor15_cell_id, buffer(cur_tlv_data_byte, 4), cell_id, "Cell ID: " .. cell_id)
    cur_tlv_data_byte = cur_tlv_data_byte + 4

    -- EARFCN
    local earfcn = buffer(cur_tlv_data_byte, 4):le_uint()
    tlv_tree:add(fields.ibiltecellinfor15_earfcn, buffer(cur_tlv_data_byte, 4), earfcn, "EARFCN: " .. earfcn)
    cur_tlv_data_byte = cur_tlv_data_byte + 4

    -- PID
    local pid = buffer(cur_tlv_data_byte, 4):le_uint()
    tlv_tree:add(fields.ibiltecellinfor15_pid, buffer(cur_tlv_data_byte, 4), pid, "PID: " .. pid)
    cur_tlv_data_byte = cur_tlv_data_byte + 4

    -- Latitude
    local latitude = buffer(cur_tlv_data_byte, 4):le_uint()
    tlv_tree:add(fields.ibiltecellinfor15_latitude, buffer(cur_tlv_data_byte, 4), latitude, "Latitude: " .. latitude)
    cur_tlv_data_byte = cur_tlv_data_byte + 4

    -- Longitude
    local longitude = buffer(cur_tlv_data_byte, 4):le_uint()
    tlv_tree:add(fields.ibiltecellinfor15_longitude, buffer(cur_tlv_data_byte, 4), longitude, "Longitude: " .. longitude)
    cur_tlv_data_byte = cur_tlv_data_byte + 4

    -- Bandwidth
    local bandwidth = buffer(cur_tlv_data_byte, 1):le_uint()
    tlv_tree:add(fields.ibiltecellinfor15_bandwidth, buffer(cur_tlv_data_byte, 1), bandwidth, "Bandwidth: " .. bandwidth)
    cur_tlv_data_byte = cur_tlv_data_byte + 1

    -- Deployment Type
    local deployment_type = buffer(cur_tlv_data_byte, 1):le_uint()
    tlv_tree:add(fields.ibiltecellinfor15_deployment_type, buffer(cur_tlv_data_byte, 1), deployment_type, "Deployment Type: " .. deployment_type)
    cur_tlv_data_byte = cur_tlv_data_byte + 1

    -- Unknown
    tlv_tree:add(fields.ibiltecellinfor15_unknown, buffer(cur_tlv_data_byte, 2))
    cur_tlv_data_byte = cur_tlv_data_byte + 2

    return true
end
