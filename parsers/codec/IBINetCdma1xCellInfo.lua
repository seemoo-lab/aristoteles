PARSER = {}

-- Just a guess, we have not been able to validate this on real data yet
PARSER.codec_name = "IBINetCdma1xCellInfo"

-- Has to be a local field, to access it in the parser method
local fields = {
    ibicdma1xcellinfot_index = ProtoField.uint32("ari.ibicdma1xcellinfot.index", "IBINetCdma1xCellInfo Index", base.DEC),
    ibicdma1xcellinfot_mcc = ProtoField.uint32("ari.ibicdma1xcellinfot.mcc", "IBINetCdma1xCellInfo MCC", base.DEC),
    ibicdma1xcellinfot_mnc = ProtoField.uint32("ari.ibicdma1xcellinfot.mnc", "IBINetCdma1xCellInfo MNC", base.DEC),
    ibicdma1xcellinfot_band_info = ProtoField.uint32("ari.ibicdma1xcellinfot.band_info", "IBINetCdma1xCellInfo Band info", base.DEC),
    ibicdma1xcellinfot_band_info = ProtoField.uint32("ari.ibicdma1xcellinfot.network", "IBINetCdma1xCellInfo Network", base.DEC),
    ibicdma1xcellinfot_band_info = ProtoField.uint32("ari.ibicdma1xcellinfot.nid", "IBINetCdma1xCellInfo NID", base.DEC),
    ibicdma1xcellinfot_area_code = ProtoField.uint32("ari.ibicdma1xcellinfot.area_code", "IBINetCdma1xCellInfo Area code", base.DEC),
    ibicdma1xcellinfot_cell_id = ProtoField.uint32("ari.ibicdma1xcellinfot.cell_id", "IBINetCdma1xCellInfo Cell ID", base.DEC),
    ibicdma1xcellinfot_earfcn = ProtoField.uint32("ari.ibicdma1xcellinfot.earfcn", "IBINetCdma1xCellInfo EARFCN", base.DEC),
    ibicdma1xcellinfot_latitude = ProtoField.uint32("ari.ibicdma1xcellinfot.latitude", "IBINetCdma1xCellInfo Latitude", base.DEC),
    ibicdma1xcellinfot_longitude = ProtoField.uint32("ari.ibicdma1xcellinfot.longitude", "IBINetCdma1xCellInfo Longitude", base.DEC),
    ibicdma1xcellinfot_zoneid = ProtoField.uint32("ari.ibicdma1xcellinfot.zoneid", "IBINetCdma1xCellInfo Zone ID", base.DEC),
    ibicdma1xcellinfot_ltm_offset = ProtoField.uint32("ari.ibicdma1xcellinfot.ltm_offset", "IBINetCdma1xCellInfo ltmOffset", base.DEC),
    ibicdma1xcellinfot_day_light_savings = ProtoField.uint32("ari.ibicdma1xcellinfot.day_light_savings", "IBINetCdma1xCellInfo Day Light Savings", base.DEC),
    ibicdma1xcellinfot_unknown = ProtoField.bytes("ari.ibicdma1xcellinfot.unknown", "Unknown", base.SPACE)
}

PARSER.fields = fields

function PARSER.parse(packet, tlv_tree, cur_tlv_data_byte, tlv_data_tvb, extra_information)
    local buffer = packet.buffer

    -- Index
    local index = buffer(cur_tlv_data_byte, 2):le_uint()
    tlv_tree:add(fields.ibicdma1xcellinfot_index, buffer(cur_tlv_data_byte, 2), index, "Index: " .. index)
    cur_tlv_data_byte = cur_tlv_data_byte + 2

    -- MCC
    local mcc = buffer(cur_tlv_data_byte, 2):le_uint()
    tlv_tree:add(fields.ibicdma1xcellinfot_mcc, buffer(cur_tlv_data_byte, 2), mcc, "MCC: " .. mcc)
    cur_tlv_data_byte = cur_tlv_data_byte + 2

    -- MNC
    local mnc = buffer(cur_tlv_data_byte, 2):le_uint()
    tlv_tree:add(fields.ibicdma1xcellinfot_mnc, buffer(cur_tlv_data_byte, 2), mnc, "MNC: " .. mnc)
    cur_tlv_data_byte = cur_tlv_data_byte + 2

    -- EARFCN
    local earfcn = buffer(cur_tlv_data_byte, 2):le_uint()
    tlv_tree:add(fields.ibicdma1xcellinfot_earfcn, buffer(cur_tlv_data_byte, 2), earfcn, "EARFCN: " .. earfcn)
    cur_tlv_data_byte = cur_tlv_data_byte + 2

    -- Band Info
    local band_info = buffer(cur_tlv_data_byte, 2):le_uint()
    tlv_tree:add(fields.ibicdma1xcellinfot_band_info, buffer(cur_tlv_data_byte, 2), band_info, "Band Info: " .. band_info)
    cur_tlv_data_byte = cur_tlv_data_byte + 2

    -- Network
    local network = buffer(cur_tlv_data_byte, 2):le_uint()
    tlv_tree:add(fields.ibicdma1xcellinfot_network, buffer(cur_tlv_data_byte, 2), network, "Network: " .. network)
    cur_tlv_data_byte = cur_tlv_data_byte + 2

    -- NID
    local nid = buffer(cur_tlv_data_byte, 2):le_uint()
    tlv_tree:add(fields.ibicdma1xcellinfot_nid, buffer(cur_tlv_data_byte, 2), nid, "NID: " .. nid)
    cur_tlv_data_byte = cur_tlv_data_byte + 2

    -- Cell ID
    local cell_id = buffer(cur_tlv_data_byte, 2):le_uint()
    tlv_tree:add(fields.ibicdma1xcellinfot_cell_id, buffer(cur_tlv_data_byte, 2), cell_id, "Cell ID: " .. cell_id)
    cur_tlv_data_byte = cur_tlv_data_byte + 2

    -- Latitude
    local latitude = buffer(cur_tlv_data_byte, 4):le_uint()
    tlv_tree:add(fields.ibicdma1xcellinfot_latitude, buffer(cur_tlv_data_byte, 4), latitude, "Latitude: " .. latitude)
    cur_tlv_data_byte = cur_tlv_data_byte + 4

    -- Longitude
    local longitude = buffer(cur_tlv_data_byte, 4):le_uint()
    tlv_tree:add(fields.ibicdma1xcellinfot_longitude, buffer(cur_tlv_data_byte, 4), longitude, "Longitude: " .. longitude)
    cur_tlv_data_byte = cur_tlv_data_byte + 4

    -- ZoneID
    local zoneid = buffer(cur_tlv_data_byte, 2):le_uint()
    tlv_tree:add(fields.ibicdma1xcellinfot_zoneid, buffer(cur_tlv_data_byte, 2), zoneid, "Zone ID: " .. zoneid)
    cur_tlv_data_byte = cur_tlv_data_byte + 2

    -- Area Code
    local area_code = buffer(cur_tlv_data_byte, 2):le_uint()
    tlv_tree:add(fields.ibicdma1xcellinfot_area_code, buffer(cur_tlv_data_byte, 2), area_code, "Area Code: " .. area_code)
    cur_tlv_data_byte = cur_tlv_data_byte + 2

    -- ltmOffset
    local ltm_offset = buffer(cur_tlv_data_byte, 1):le_uint()
    tlv_tree:add(fields.ibicdma1xcellinfot_ltm_offset, buffer(cur_tlv_data_byte, 1), ltm_offset, "ltmOffset: " .. ltm_offset)
    cur_tlv_data_byte = cur_tlv_data_byte + 1

    -- Day Light Savings
    local day_light_savings = buffer(cur_tlv_data_byte, 1):le_uint()
    tlv_tree:add(fields.ibicdma1xcellinfot_day_light_savings, buffer(cur_tlv_data_byte, 1), day_light_savings, "Day Light Savings: " .. day_light_savings)
    cur_tlv_data_byte = cur_tlv_data_byte + 1

    -- Unknown
    tlv_tree:add(fields.ibicdma1xcellinfot_unknown, buffer(cur_tlv_data_byte, 18))
    cur_tlv_data_byte = cur_tlv_data_byte + 18

    return true
end
