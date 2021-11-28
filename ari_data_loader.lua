---
-- This file contains the loader, responsible for loading the TLV parsers, look-up-tables and data from the folder structure.
-- @author Tobias Kröll
--

require("ari_utils")

local cwd = debug.getinfo(1).source:match("@?(.*/)")

local searchpath = "parsers/tlv"
local tlv_parsers = {}
local fields = {}

-- Load TLV parsers
for file in Dir.open(cwd .. searchpath) do
    dofile(cwd .. searchpath .. "/" .. file)

    local path = { PARSER.group_id, PARSER.type_id, PARSER.tlv_id }
    local tlv_parser_table = table.GetWithPath(tlv_parsers, path)

    if not tlv_parser_table then
        tlv_parser_table = {}
        table.SetWithPath(tlv_parsers, path, tlv_parser_table)
    end

    tlv_parser_table[#tlv_parser_table + 1] = PARSER.parse

    table.Merge(fields, PARSER.fields or {})

    -- Reset global table
    PARSER = nil
end

searchpath = "parsers/codec"
local codec_parsers = {}

-- Load Codec parsers
for file in Dir.open(cwd .. searchpath) do
    dofile(cwd .. searchpath .. "/" .. file)

    local path = { PARSER.codec_name }
    local codec_parser_table = table.GetWithPath(codec_parsers, path)

    if not codec_parser_table then
        codec_parser_table = {}
        table.SetWithPath(codec_parsers, path, codec_parser_table)
    end

    codec_parser_table[#codec_parser_table + 1] = PARSER

    table.Merge(fields, PARSER.fields or {})

    -- Reset global table
    PARSER = nil
end

searchpath = "types/structure"
local tlv_structure = {}

-- Load additional structure LUTs and merge them together
for file in Dir.open(cwd .. searchpath) do
    local loaded_structure = dofile(cwd .. searchpath .. "/" .. file)

    table.Merge(tlv_structure, loaded_structure)
end

local asstring_lut = {}
searchpath = "types/asstring"

-- Load additional asstring LUTs and merge them together
for file in Dir.open(cwd .. searchpath) do
    local loaded_asstring_lut = dofile(cwd .. searchpath .. "/" .. file)

    table.Merge(asstring_lut, loaded_asstring_lut)
end

return {
    tlv_parsers = tlv_parsers,
    codec_parsers = codec_parsers,
    fields = fields,
    structure = tlv_structure,
    asstring_lut = asstring_lut,
}
