PARSER = {}

-- Just a guess, we have not been able to validate this on real data yet
PARSER.codec_name = "IBILteCellInfoV1T"

-- Has to be a local field, to access it in the parser method
local fields = {
    ibiltecellinfov1t_index = ProtoField.uint32("ari.ibiltecellinfov1t.index", "IBILteCellInfoV1T Index", base.DEC),
    ibiltecellinfov1t_mcc = ProtoField.uint32("ari.ibiltecellinfov1t.mcc", "IBILteCellInfoV1T MCC", base.DEC),
    ibiltecellinfov1t_mnc = ProtoField.uint32("ari.ibiltecellinfov1t.mnc", "IBILteCellInfoV1T MNC", base.DEC),
    ibiltecellinfov1t_band_info = ProtoField.uint32("ari.ibiltecellinfov1t.band_info", "IBILteCellInfoV1T Band info", base.DEC),
    ibiltecellinfov1t_area_code = ProtoField.uint32("ari.ibiltecellinfov1t.area_code", "IBILteCellInfoV1T Area code", base.DEC),
    ibiltecellinfov1t_cell_id = ProtoField.uint32("ari.ibiltecellinfov1t.cell_id", "IBILteCellInfoV1T Cell ID", base.DEC),
    ibiltecellinfov1t_earfcn = ProtoField.uint32("ari.ibiltecellinfov1t.earfcn", "IBILteCellInfoV1T EARFCN", base.DEC),
    ibiltecellinfov1t_pid = ProtoField.uint32("ari.ibiltecellinfov1t.pid", "IBILteCellInfoV1T PID", base.DEC),
    ibiltecellinfov1t_latitude = ProtoField.uint32("ari.ibiltecellinfov1t.latitude", "IBILteCellInfoV1T Latitude", base.DEC),
    ibiltecellinfov1t_longitude = ProtoField.uint32("ari.ibiltecellinfov1t.longitude", "IBILteCellInfoV1T Longitude", base.DEC),
    ibiltecellinfov1t_bandwidth = ProtoField.uint32("ari.ibiltecellinfov1t.bandwidth", "IBILteCellInfoV1T Bandwidth", base.DEC),
    ibiltecellinfov1t_deployment_type = ProtoField.uint32("ari.ibiltecellinfov1t.deployment_type", "IBILteCellInfoV1T Deployment Type", base.DEC),
    ibiltecellinfov1t_unknown = ProtoField.bytes("ari.ibiltecellinfov1t.unknown", "Unknown", base.SPACE)
}

PARSER.fields = fields

function PARSER.parse(packet, tlv_tree, cur_tlv_data_byte, tlv_data_tvb, extra_information)
    local buffer = packet.buffer

    -- Index
    local index = buffer(cur_tlv_data_byte, 2):le_uint()
    tlv_tree:add(fields.ibiltecellinfov1t_index, buffer(cur_tlv_data_byte, 2), index, "Index: " .. index)
    cur_tlv_data_byte = cur_tlv_data_byte + 2

    -- MCC
    local mcc = buffer(cur_tlv_data_byte, 2):le_uint()
    tlv_tree:add(fields.ibiltecellinfov1t_mcc, buffer(cur_tlv_data_byte, 2), mcc, "MCC: " .. mcc)
    cur_tlv_data_byte = cur_tlv_data_byte + 2

    -- MNC
    local mnc = buffer(cur_tlv_data_byte, 2):le_uint()
    tlv_tree:add(fields.ibiltecellinfov1t_mnc, buffer(cur_tlv_data_byte, 2), mnc, "MNC: " .. mnc)
    cur_tlv_data_byte = cur_tlv_data_byte + 2

    -- Band Info
    local band_info = buffer(cur_tlv_data_byte, 2):le_uint()
    tlv_tree:add(fields.ibiltecellinfov1t_band_info, buffer(cur_tlv_data_byte, 2), band_info, "Band Info: " .. band_info)
    cur_tlv_data_byte = cur_tlv_data_byte + 2

    -- Area Code
    local area_code = buffer(cur_tlv_data_byte, 4):le_uint()
    tlv_tree:add(fields.ibiltecellinfov1t_area_code, buffer(cur_tlv_data_byte, 4), area_code, "Area Code: " .. area_code)
    cur_tlv_data_byte = cur_tlv_data_byte + 4

    -- Cell ID
    local cell_id = buffer(cur_tlv_data_byte, 4):le_uint()
    tlv_tree:add(fields.ibiltecellinfov1t_cell_id, buffer(cur_tlv_data_byte, 4), cell_id, "Cell ID: " .. cell_id)
    cur_tlv_data_byte = cur_tlv_data_byte + 4

    -- EARFCN
    local earfcn = buffer(cur_tlv_data_byte, 4):le_uint()
    tlv_tree:add(fields.ibiltecellinfov1t_earfcn, buffer(cur_tlv_data_byte, 4), earfcn, "EARFCN: " .. earfcn)
    cur_tlv_data_byte = cur_tlv_data_byte + 4

    -- PID
    local pid = buffer(cur_tlv_data_byte, 4):le_uint()
    tlv_tree:add(fields.ibiltecellinfov1t_pid, buffer(cur_tlv_data_byte, 4), pid, "PID: " .. pid)
    cur_tlv_data_byte = cur_tlv_data_byte + 4

    -- Latitude
    local latitude = buffer(cur_tlv_data_byte, 4):le_uint()
    tlv_tree:add(fields.ibiltecellinfov1t_latitude, buffer(cur_tlv_data_byte, 4), latitude, "Latitude: " .. latitude)
    cur_tlv_data_byte = cur_tlv_data_byte + 4

    -- Longitude
    local longitude = buffer(cur_tlv_data_byte, 4):le_uint()
    tlv_tree:add(fields.ibiltecellinfov1t_longitude, buffer(cur_tlv_data_byte, 4), longitude, "Longitude: " .. longitude)
    cur_tlv_data_byte = cur_tlv_data_byte + 4

    -- Bandwidth
    local bandwidth = buffer(cur_tlv_data_byte, 1):le_uint()
    tlv_tree:add(fields.ibiltecellinfov1t_bandwidth, buffer(cur_tlv_data_byte, 1), bandwidth, "Bandwidth: " .. bandwidth)
    cur_tlv_data_byte = cur_tlv_data_byte + 1

    -- Deployment Type
    local deployment_type = buffer(cur_tlv_data_byte, 1):le_uint()
    tlv_tree:add(fields.ibiltecellinfov1t_deployment_type, buffer(cur_tlv_data_byte, 1), deployment_type, "Deployment Type: " .. deployment_type)
    cur_tlv_data_byte = cur_tlv_data_byte + 1

    -- Unknown
    tlv_tree:add(fields.ibiltecellinfov1t_unknown, buffer(cur_tlv_data_byte, 2))
    cur_tlv_data_byte = cur_tlv_data_byte + 2

    return true
end
