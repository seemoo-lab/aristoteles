PARSER = {}

PARSER.codec_name = "IBIDateTime"

-- Has to be a local field, to access it in the parser method
local fields = {
    ibidatetime_second_field = ProtoField.uint8("ari.ibidatetime.second", "IBIDateTime Second", base.DEC),
    ibidatetime_minute_field = ProtoField.uint8("ari.ibidatetime.minute", "IBIDateTime Minute", base.DEC),
    ibidatetime_hour_field = ProtoField.uint8("ari.ibidatetime.hour", "IBIDateTime Hour", base.DEC),
    ibidatetime_day_field = ProtoField.uint8("ari.ibidatetime.day", "IBIDateTime Day", base.DEC),
    ibidatetime_month_field = ProtoField.uint8("ari.ibidatetime.month", "IBIDateTime Month", base.DEC),
    ibidatetime_year_field = ProtoField.uint8("ari.ibidatetime.year", "IBIDateTime Year", base.DEC),
}

PARSER.fields = fields

function PARSER.parse(packet, tlv_tree, cur_tlv_data_byte, tlv_data_tvb, extra_information)
    local buffer = packet.buffer
    
    local year = buffer(cur_tlv_data_byte, 2):le_uint()
    local month = buffer(cur_tlv_data_byte + 2, 1):le_uint()
    local day = buffer(cur_tlv_data_byte + 3, 1):le_uint()
    local hour = buffer(cur_tlv_data_byte + 4, 1):le_uint()
    local minute = buffer(cur_tlv_data_byte + 5, 1):le_uint()
    local second = buffer(cur_tlv_data_byte + 6, 1):le_uint()

    tlv_tree:add(fields.ibidatetime_year_field, buffer(cur_tlv_data_byte, 2), year, "Year: " .. year)
    tlv_tree:add(fields.ibidatetime_month_field, buffer(cur_tlv_data_byte + 2, 1), month, "Month: " .. month)
    tlv_tree:add(fields.ibidatetime_day_field, buffer(cur_tlv_data_byte + 3, 1), day, "Day: " .. day)
    tlv_tree:add(fields.ibidatetime_hour_field, buffer(cur_tlv_data_byte + 4, 1), hour, "Hour: " .. hour)
    tlv_tree:add(fields.ibidatetime_minute_field, buffer(cur_tlv_data_byte + 5, 1), minute, "Minute: " .. minute)
    tlv_tree:add(fields.ibidatetime_second_field, buffer(cur_tlv_data_byte + 6, 1), second, "Second: " .. second)

    tlv_tree:add(buffer(cur_tlv_data_byte, 7), "Time: " .. hour .. ":" .. minute .. ":" .. second .. " " .. month .. "/" .. day .. "/" .. year )

    return true
end
