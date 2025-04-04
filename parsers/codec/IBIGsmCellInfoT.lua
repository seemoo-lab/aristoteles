PARSER = {}

PARSER.codec_name = "IBIGsmCellInfoT"

-- Has to be a local field, to access it in the parser method
local fields = {
    ibigsmcellinfot_index = ProtoField.uint32("ari.ibigsmcellinfot.index", "IBIGsmCellInfoT Index", base.DEC),
    ibigsmcellinfot_mcc = ProtoField.uint32("ari.ibigsmcellinfot.mcc", "IBIGsmCellInfoT MCC", base.DEC),
    ibigsmcellinfot_mnc = ProtoField.uint32("ari.ibigsmcellinfot.mnc", "IBIGsmCellInfoT MNC", base.DEC),
    ibigsmcellinfot_band_info = ProtoField.uint32("ari.ibigsmcellinfot.band_info", "IBIGsmCellInfoT Band info", base.DEC),
    ibigsmcellinfot_area_code = ProtoField.uint32("ari.ibigsmcellinfot.area_code", "IBIGsmCellInfoT Area code", base.DEC),
    ibigsmcellinfot_cell_id = ProtoField.uint32("ari.ibigsmcellinfot.cell_id", "IBIGsmCellInfoT Cell ID", base.DEC),
    ibigsmcellinfot_earfcn = ProtoField.uint32("ari.ibigsmcellinfot.earfcn", "IBIGsmCellInfoT EARFCN", base.DEC),
    ibigsmcellinfot_latitude = ProtoField.uint32("ari.ibigsmcellinfot.latitude", "IBIGsmCellInfoT Latitude", base.DEC),
    ibigsmcellinfot_longitude = ProtoField.uint32("ari.ibigsmcellinfot.longitude", "IBIGsmCellInfoT Longitude", base.DEC),
}

PARSER.fields = fields

function PARSER.parse(packet, tlv_tree, cur_tlv_data_byte, tlv_data_tvb, extra_information)
    local buffer = packet.buffer

    -- Index
    local index = buffer(cur_tlv_data_byte, 2):le_uint()
    tlv_tree:add(fields.ibigsmcellinfot_index, buffer(cur_tlv_data_byte, 2), index, "Index: " .. index)
    cur_tlv_data_byte = cur_tlv_data_byte + 2

    -- MCC
    local mcc = buffer(cur_tlv_data_byte, 2):le_uint()
    tlv_tree:add(fields.ibigsmcellinfot_mcc, buffer(cur_tlv_data_byte, 2), mcc, "MCC: " .. mcc)
    cur_tlv_data_byte = cur_tlv_data_byte + 2

    -- MNC
    local mnc = buffer(cur_tlv_data_byte, 2):le_uint()
    tlv_tree:add(fields.ibigsmcellinfot_mnc, buffer(cur_tlv_data_byte, 2), mnc, "MNC: " .. mnc)
    cur_tlv_data_byte = cur_tlv_data_byte + 2

    -- Band Info
    local band_info = buffer(cur_tlv_data_byte, 2):le_uint()
    tlv_tree:add(fields.ibigsmcellinfot_band_info, buffer(cur_tlv_data_byte, 2), band_info, "Band Info: " .. band_info)
    cur_tlv_data_byte = cur_tlv_data_byte + 2

    -- Area Code
    local area_code = buffer(cur_tlv_data_byte, 2):le_uint()
    tlv_tree:add(fields.ibigsmcellinfot_area_code, buffer(cur_tlv_data_byte, 2), area_code, "Area Code: " .. area_code)
    cur_tlv_data_byte = cur_tlv_data_byte + 2

    -- Cell ID
    local cell_id = buffer(cur_tlv_data_byte, 2):le_uint()
    tlv_tree:add(fields.ibigsmcellinfot_cell_id, buffer(cur_tlv_data_byte, 2), cell_id, "Cell ID: " .. cell_id)
    cur_tlv_data_byte = cur_tlv_data_byte + 2

    -- EARFCN
    local earfcn = buffer(cur_tlv_data_byte, 2):le_uint()
    tlv_tree:add(fields.ibigsmcellinfot_earfcn, buffer(cur_tlv_data_byte, 2), earfcn, "EARFCN: " .. earfcn)
    cur_tlv_data_byte = cur_tlv_data_byte + 2

    -- Latitude
    local latitude = buffer(cur_tlv_data_byte, 4):le_uint()
    tlv_tree:add(fields.ibigsmcellinfot_latitude, buffer(cur_tlv_data_byte, 4), latitude, "Latitude: " .. latitude)
    cur_tlv_data_byte = cur_tlv_data_byte + 4

    -- Longitude
    local longitude = buffer(cur_tlv_data_byte, 4):le_uint()
    tlv_tree:add(fields.ibigsmcellinfot_longitude, buffer(cur_tlv_data_byte, 4), longitude, "Longitude: " .. longitude)
    cur_tlv_data_byte = cur_tlv_data_byte + 4

    return true
end
