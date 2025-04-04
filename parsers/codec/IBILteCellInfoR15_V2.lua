PARSER = {}

PARSER.codec_name = "IBILteCellInfoR15_V2"

-- Has to be a local field, to access it in the parser method
local fields = {
    ibiltecellinfor15v2_index = ProtoField.uint32("ari.ibiltecellinfor15v2.index", "IBILteCellInfoR15_V2 Index", base.DEC),
    ibiltecellinfor15v2_mcc = ProtoField.uint32("ari.ibiltecellinfor15v2.mcc", "IBILteCellInfoR15_V2 MCC", base.DEC),
    ibiltecellinfor15v2_mnc = ProtoField.uint32("ari.ibiltecellinfor15v2.mnc", "IBILteCellInfoR15_V2 MNC", base.DEC),
    ibiltecellinfor15v2_band_info = ProtoField.uint32("ari.ibiltecellinfor15v2.band_info", "IBILteCellInfoR15_V2 Band info", base.DEC),
    ibiltecellinfor15v2_area_code = ProtoField.uint32("ari.ibiltecellinfor15v2.area_code", "IBILteCellInfoR15_V2 Area code", base.DEC),
    ibiltecellinfor15v2_cell_id = ProtoField.uint32("ari.ibiltecellinfor15v2.cell_id", "IBILteCellInfoR15_V2 Cell ID", base.DEC),
    ibiltecellinfor15v2_earfcn = ProtoField.uint32("ari.ibiltecellinfor15v2.earfcn", "IBILteCellInfoR15_V2 EARFCN", base.DEC),
    ibiltecellinfor15v2_pid = ProtoField.uint32("ari.ibiltecellinfor15v2.pid", "IBILteCellInfoR15_V2 PID", base.DEC),
    ibiltecellinfor15v2_latitude = ProtoField.uint32("ari.ibiltecellinfor15v2.latitude", "IBILteCellInfoR15_V2 Latitude", base.DEC),
    ibiltecellinfor15v2_longitude = ProtoField.uint32("ari.ibiltecellinfor15v2.longitude", "IBILteCellInfoR15_V2 Longitude", base.DEC),
    ibiltecellinfor15v2_bandwidth = ProtoField.uint32("ari.ibiltecellinfor15v2.bandwidth", "IBILteCellInfoR15_V2 Bandwidth", base.DEC),
    ibiltecellinfor15v2_deployment_type = ProtoField.uint32("ari.ibiltecellinfor15v2.deployment_type", "IBILteCellInfoR15_V2 Deployment Type", base.DEC),
    ibiltecellinfor15v2_unknown = ProtoField.bytes("ari.ibiltecellinfor15v2.unknown", "Unknown", base.SPACE)
}

PARSER.fields = fields

function PARSER.parse(packet, tlv_tree, cur_tlv_data_byte, tlv_data_tvb, extra_information)
    local buffer = packet.buffer

    -- Index
    local index = buffer(cur_tlv_data_byte, 2):le_uint()
    tlv_tree:add(fields.ibiltecellinfor15v2_index, buffer(cur_tlv_data_byte, 2), index, "Index: " .. index)
    cur_tlv_data_byte = cur_tlv_data_byte + 2

    -- MCC
    local mcc = buffer(cur_tlv_data_byte, 2):le_uint()
    tlv_tree:add(fields.ibiltecellinfor15v2_mcc, buffer(cur_tlv_data_byte, 2), mcc, "MCC: " .. mcc)
    cur_tlv_data_byte = cur_tlv_data_byte + 2

    -- MNC
    local mnc = buffer(cur_tlv_data_byte, 2):le_uint()
    tlv_tree:add(fields.ibiltecellinfor15v2_mnc, buffer(cur_tlv_data_byte, 2), mnc, "MNC: " .. mnc)
    cur_tlv_data_byte = cur_tlv_data_byte + 2

    -- Band Info
    local band_info = buffer(cur_tlv_data_byte, 2):le_uint()
    tlv_tree:add(fields.ibiltecellinfor15v2_band_info, buffer(cur_tlv_data_byte, 2), band_info, "Band Info: " .. band_info)
    cur_tlv_data_byte = cur_tlv_data_byte + 2

    -- Area Code
    local area_code = buffer(cur_tlv_data_byte, 4):le_uint()
    tlv_tree:add(fields.ibiltecellinfor15v2_area_code, buffer(cur_tlv_data_byte, 4), area_code, "Area Code: " .. area_code)
    cur_tlv_data_byte = cur_tlv_data_byte + 4

    -- Cell ID
    local cell_id = buffer(cur_tlv_data_byte, 4):le_uint()
    tlv_tree:add(fields.ibiltecellinfor15v2_cell_id, buffer(cur_tlv_data_byte, 4), cell_id, "Cell ID: " .. cell_id)
    cur_tlv_data_byte = cur_tlv_data_byte + 4

    -- EARFCN
    local earfcn = buffer(cur_tlv_data_byte, 4):le_uint()
    tlv_tree:add(fields.ibiltecellinfor15v2_earfcn, buffer(cur_tlv_data_byte, 4), earfcn, "EARFCN: " .. earfcn)
    cur_tlv_data_byte = cur_tlv_data_byte + 4

    -- PID
    local pid = buffer(cur_tlv_data_byte, 4):le_uint()
    tlv_tree:add(fields.ibiltecellinfor15v2_pid, buffer(cur_tlv_data_byte, 4), pid, "PID: " .. pid)
    cur_tlv_data_byte = cur_tlv_data_byte + 4

    -- Latitude
    local latitude = buffer(cur_tlv_data_byte, 4):le_uint()
    tlv_tree:add(fields.ibiltecellinfor15v2_latitude, buffer(cur_tlv_data_byte, 4), latitude, "Latitude: " .. latitude)
    cur_tlv_data_byte = cur_tlv_data_byte + 4

    -- Longitude
    local longitude = buffer(cur_tlv_data_byte, 4):le_uint()
    tlv_tree:add(fields.ibiltecellinfor15v2_longitude, buffer(cur_tlv_data_byte, 4), longitude, "Longitude: " .. longitude)
    cur_tlv_data_byte = cur_tlv_data_byte + 4

    -- Bandwidth
    local bandwidth = buffer(cur_tlv_data_byte, 1):le_uint()
    tlv_tree:add(fields.ibiltecellinfor15v2_bandwidth, buffer(cur_tlv_data_byte, 1), bandwidth, "Bandwidth: " .. bandwidth)
    cur_tlv_data_byte = cur_tlv_data_byte + 1

    -- Deployment Type
    local deployment_type = buffer(cur_tlv_data_byte, 1):le_uint()
    tlv_tree:add(fields.ibiltecellinfor15v2_deployment_type, buffer(cur_tlv_data_byte, 1), deployment_type, "Deployment Type: " .. deployment_type)
    cur_tlv_data_byte = cur_tlv_data_byte + 1

    -- Unknown
    tlv_tree:add(fields.ibiltecellinfor15v2_unknown, buffer(cur_tlv_data_byte, 18))
    cur_tlv_data_byte = cur_tlv_data_byte + 18

    return true
end
