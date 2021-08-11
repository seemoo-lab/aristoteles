# Development Intro

This document should give you an overview on the different approaches available to extend the dissector with new data. They all are based on the principle to drop files in the specific folders. The files within the folders are then later automatically included, loaded and merged internally. This means you can structure and group your data and parsers as you like.

> **NOTE:** First make yourself familiar with the Wireshark [Lua API documentation](https://www.wireshark.org/docs/wsdg_html_chunked/lua_module_Tree.html) & the ARI structure and its different identifiers.  
> Also take a look at the existing implementations to get a better understanding on how to develop new parsers.

## Interfaces

At the moment there are 4 different entry points, of which the parsers are probably the most relevant for you:

### Parsing

- Codec Parsers
- TLV Parsers

### Additional/structural data

- Codec enum Look-up-tables
- Packet structure information

### Execution order

The dissector will go through the different approaches and will apply the first parser that is found. It will start with the most specific parser, the TLV parsers. If none is specified, it will look for custom codec parsers if the codec name is available and last but not least, it will try to resolve the codec name in the enum look-up-table.

### Parsers: Codecs

These can be found inside the [`parsers/codec/`](parsers/codec/) folder.
In ARI, TLVs may be associated with a codec that describes how the data is decoded/encoded. This association is only available if the structure is known through information from the binary analysis.
Inside this folder you can implement a parser that will be applied automatically to all codecs with a matching name.

Just create a new Lua file inside the folder, ideally named like the codec.
This file has to contain a global `PARSER` table that looks like roughly this:

```lua
PARSER = {}

PARSER.codec_name = "IBIBool"

-- Has to be a local field, to access it in the parser method
local fields = {
    ibibool_value = ProtoField.bool("ari.ibibool.value", "IBIBool value"),
}

PARSER.fields = fields

function PARSER.parse(packet, tlv_tree, cur_tlv_data_byte, tlv_data_tvb, extra_information)
    -- Implement your analysis and extraction here

    return true
end
```

You will have to implement a `parse(...)` method, put the codec's name inside the `PARSER.codec_name` variable and declare Wireshark [ProtoFields](https://www.wireshark.org/docs/wsdg_html_chunked/lua_module_Proto.html#lua_class_ProtoField) in an extra `PARSER.fields` table, so they can be used to search after and are registered as fields for the protocol. The parse method should return true / false on success / failure and it is responsible for adding its data to the tree.

### Parsers: TLV

You can find them in the [`parsers/tlv/`](parsers/tlv/) folder.
These parsers will work on specific TLV IDs. Due to a TLV ID being unique only within its group and general packet type, this parser is the most specific parsing method. It is only applied to a single TLV in a single group with a single type. This parser can enable you to perform specific methods and analysis on certain fields that cannot be applied to a group of packets other than the codec parsers.

To create a new parser, go ahead and create a new Lua file inside the folder. This file has to contain a global `PARSER` table variable that looks roughly like this:

```lua
PARSER = {}

PARSER.group_id = 1
PARSER.type_id = 526
PARSER.tlv_id = 1

-- Has to be a local field, to access it in the parser method
local fields = {
    utauint64_astimestamp_field = ProtoField.uint16("ari.utauint64_astimestamp", "UtaUInt64 as Timestamp", base.DEC),
}

PARSER.fields = fields

function PARSER.parse(packet, tlv_tree, cur_tlv_data_byte, tlv_data_tvb, extra_information)
    -- ADD YOUR EXTRACTION HERE
    
    return true
end
```

You will need to implement a `PARSER.parse(...)` method, specify [ProtoFields](https://www.wireshark.org/docs/wsdg_html_chunked/lua_module_Proto.html#lua_class_ProtoField) in the `PARSER.fields` table and set the respective group ID, type ID and TLV ID that this parser should be called on. The parse method should return true / false on success / failure and it is responsible for adding its data to the tree.

### Codec enum Look-up-tables

The folder [`types/asstring/`](types/asstring/) contains look-up-tables for codec names to their interpretation of values in strings. Such a file contains a Lua table with keys named by the codecs they describe. For each codec it then contains another look-up-table that matches an integer value to a string.  

This type of data is usually extracted using our Ghidra script to automatically extract `AsString()` methods of codecs. All these codecs that have an `AsString` method are only simple enum structures and can be resolved with a simple lookup, instead of a custom parser for each of those codecs. Thus, we provide this method to add those simple codec matchers.  

The look-up-tables can also be reused in specific parsers if needed. This is particularly useful for compound codecs that contain multiple data types as can be seen for example in the [`IBIPlmnWAcT`](parsers/codec/IBIPlmnWAcT.lua) codec parser.

### Packet structure information

This contains the output of our Ghidra script that is responsible for extracting the packet structure from the `libARI.dylib` binary. This structure contains all meta information about the packets. It contains the available Groups, Type IDs, TLVs and mandatory TLVs for each packet. It also contains the codec name for each TLV, which is used to match the codec parsers and look-up-tables described above.
If you extract additional information you can also add new Lua files to this folder, so they are included and merged automatically.

## Ghidra Extracton Scripts

To extract information for the `AsString` look-up-tables and the structural information, we provide two python scripts for Ghidra. Those scripts can be found in the [`tools/ghidra_scripts/`](tools/ghidra_scripts/) folder.

Before you add the scripts to your Ghidra installation, you may want to adjust the output paths inside the scripts to a folder on your machine.

To run the scripts, you will need to add both scripts to your Ghidra Script Manager using the "Script Directories" Icon in the toolbar. There you can add the path to the scripts and they should start to appear in the scripts list (filter for `ari-`). For the scripts to work properly, it is best to first run a standard Ghidra analysis on the binary you are analyzing.

After the script has run, they fill create folders tagged with the current timestamp in the specified output folder and contain the data in Lua files. These files are ready to be dropped in to the respective folders as described in the previous chapter.

