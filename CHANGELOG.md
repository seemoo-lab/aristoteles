# Changelog

All notable changes to this project will be documented in this file.

This project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html), and the format of this changelog is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/).

## Unreleased

### Features
- Added a GMID field to the dissector (virtual field, combination of group + type id) by @sterzy (#6)
- Add Acknowledgement Option field by @sterzy (#2)
- Added TLV codec's byte length extraction via the structure extraction Ghidra script
- AsString codec resolver can now also resolve lists of enums, thanks to the codec length extraction

### Changes
- Renamed `utils.lua` to `ari_utils.lua` to prevent interference with other lua plugins
- Added subtrees "Extra Information" and "Unknown Bits" to TLV tree to clear up the overview
- Mark GMID and type name fields as generated, to show that they are virtual fields

### Fixes
- Remove unknown bit 7 in byte 5 (is part of the group id) by @sterzy (#4)
- Fix range of bytes shown to include parts of the group id (#8)
- Fix range of bytes shown for structural tree elements like "Header", "Data" etc.

### Removals
- Removed TLV "Starts at" field

## [v1.0.0](https://github.com/seemoo-lab/aristoteles/tree/v1.0.0) (11-08-2021)

ARIstoteles is now publicly available.