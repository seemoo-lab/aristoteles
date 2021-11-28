# Extract ARI packet structure information from libARI.dylib on iOS.
#
#@author saibotk
#@category ARI.structure
#@keybinding
#@menupath
#@toolbar

from ghidra.app.decompiler import DecompileOptions
from ghidra.app.decompiler import DecompInterface
from ghidra.program.model.pcode import PcodeOp
from ghidra.program.model.scalar import Scalar
from ghidra.program.model.data import Pointer40DataType, WordDataType, UnsignedIntegerDataType, UnsignedShortDataType
from ghidra.app.emulator import EmulatorHelper

import binascii
import os
import datetime

class Analyzer:
    countGroups = 0
    rootDir = '/mnt/host/ghidra/'

    def askOutputOptions(self):
        directory = askDirectory("Where should the output be located?", "Start Extraction")

        if directory is not None:
            self.rootDir = directory.getAbsolutePath() + "/"

            print("* Analysis output will be written to: '" + self.rootDir + "'")

            return True

        return None

    def analyze(self):
        self.luaOutputDir = os.path.realpath(self.rootDir + 'ari-structure-extractor-output-{date:%Y-%m-%d_%H:%M:%S}'.format( date=datetime.datetime.now() ))
        if not os.path.exists(self.luaOutputDir):
            os.mkdir(self.luaOutputDir)

        self.listing = currentProgram.getListing()
        fm = currentProgram.getFunctionManager()
        self.funcs = fm.getFunctions(True)
        self.ifc = DecompInterface()
        options = DecompileOptions()
        self.ifc.setOptions(options)

        self.countMsgTypes = 0

        groupDefSymbol = getSymbol("_ARIMSGDEF_GROUPS", None)
        groupDefAddr = groupDefSymbol.getAddress()

        curGroupPtr = groupDefAddr.add(8)
        groups = []

        for curGroupId in range(1, 64):
            removeDataAt(curGroupPtr)
            dataObj = self.listing.createData(curGroupPtr, Pointer40DataType())
            if dataObj.getValue().getOffset() != 0:
                print(str(curGroupId) + " - " + str(dataObj))
                groups.append(dataObj.getValue())
            curGroupId = curGroupId + 1
            curGroupPtr = groupDefAddr.add(curGroupId * 8)

        self.luaOutputFile = open(self.luaOutputDir + "/ari_types.lua", "w", encoding="utf-8")
        self.luaOutputFile.write("--- AUTO GENERATED OUTPUT from Ghidra script \"ari-structure-extractor.py\" on {date:%Y-%m-%d_%H:%M:%S} \n".format( date=datetime.datetime.now() ))
        self.luaOutputFile.write("return {\n")

        for group in groups:
            result = self.analyzeGroupData(group)

            self.writeResult(result)

        self.luaOutputFile.write("}\n")
        self.luaOutputFile.close()

        print("Found " + str(self.countMsgTypes) + " types")
        print("Saved output to: " + os.path.realpath(self.luaOutputFile.name))

    def analyzeGroupData(self, groupAddr):
        curMsgPtr = groupAddr
        result = {}

        removeDataAt(groupAddr)
        grp_id_data = self.listing.createData(groupAddr, UnsignedIntegerDataType())
        grp_id = grp_id_data.getValue().getUnsignedValue()
        result["id"] = grp_id

        # Group name
        grpCodeUnit = self.listing.getCodeUnitAt(groupAddr)
        result["name"] = grpCodeUnit.getLabel()

        result["types"] = []
        typeRes = self.analyzeTypeData(curMsgPtr)

        while typeRes is not None:
            self.countMsgTypes = self.countMsgTypes + 1
            result["types"].append(typeRes)

            # Move to the next message type
            curMsgPtr = curMsgPtr.add(56)
            typeRes = self.analyzeTypeData(curMsgPtr)

        return result

    def analyzeTypeData(self, basePtr):
        data = {}

        # Type ID:
        msg_id_ptr = basePtr.add(4)
        removeDataAt(msg_id_ptr)
        msg_id_data = self.listing.createData(msg_id_ptr, UnsignedShortDataType())
        msg_id = msg_id_data.getValue().getUnsignedValue()

        if msg_id == 0:
            removeDataAt(msg_id_ptr)
            return None

        data['id'] = msg_id

        # Type name:
        msgNamePtr = basePtr.add(48)
        removeDataAt(msgNamePtr)
        msgNameData = self.listing.createData(msgNamePtr, Pointer40DataType())
        msgName = getDataAt(msgNameData.getValue()).getValue()

        data['name'] = msgName

        # Mandatory TLVs:
        mtlvPtr = basePtr.add(16)
        data['mtlvs'] = self.analyzeMTLVData(mtlvPtr)

        # TLVs:
        tlvPtr = basePtr.add(24)
        data['tlvs'] = self.analyzeTLVData(tlvPtr)

        return data

    def analyzeMTLVData(self, mtlvPtr):
        result = []

        # Resolve Pointer to data table
        removeDataAt(mtlvPtr)
        mtlvData = self.listing.createData(mtlvPtr, Pointer40DataType())
        mtlvDataPtr = mtlvData.getValue()

        # Resolve TLV ID array
        mtlv_id_ptr = mtlvDataPtr
        removeDataAt(mtlv_id_ptr)
        mtlv_id_data = self.listing.createData(mtlv_id_ptr, UnsignedIntegerDataType())
        mtlv_id = mtlv_id_data.getValue().getUnsignedValue()

        while mtlv_id != 0:
            result.append(mtlv_id)

            mtlv_id_ptr = mtlv_id_ptr.add(4)
            removeDataAt(mtlv_id_ptr)
            mtlv_id_data = self.listing.createData(mtlv_id_ptr, UnsignedIntegerDataType())
            mtlv_id = mtlv_id_data.getValue().getUnsignedValue()

        # Clear last MTLV id check pointer
        removeDataAt(mtlv_id_ptr)

        return result

    def analyzeTLVCodec(self, codecPtr):
        result = {}

        removeDataAt(codecPtr)
        tlv_codec_data = self.listing.createData(codecPtr, Pointer40DataType())
        tlv_codec_ptr = tlv_codec_data.getValue()

        # Codec Byte Length
        removeDataAt(tlv_codec_ptr)
        tlv_codec_length_data = self.listing.createData(tlv_codec_ptr, UnsignedIntegerDataType())
        result["length"] = tlv_codec_length_data.getValue().getUnsignedValue()

        # Codec Name
        tlv_codec_name_ptr = tlv_codec_ptr.add(40)
        removeDataAt(tlv_codec_name_ptr)
        tlv_codec_name_data = self.listing.createData(tlv_codec_name_ptr, Pointer40DataType())
        result["name"] = getDataAt(tlv_codec_name_data.getValue()).getValue()

        return result

    def analyzeTLVData(self, tlvPtr):
        result = []

        # Resolve Pointer to data table
        removeDataAt(tlvPtr)
        tlvData = self.listing.createData(tlvPtr, Pointer40DataType())
        tlvDataPtr = tlvData.getValue()

        # Resolve TLV data array
        tlv_id_ptr = tlvDataPtr
        removeDataAt(tlv_id_ptr)
        tlv_id_data = self.listing.createData(tlv_id_ptr, UnsignedIntegerDataType())
        tlv_id = tlv_id_data.getValue().getUnsignedValue()

        while tlv_id != 0:
            tlv_data = {}

            tlv_data["id"] = tlv_id

            tlv_codec_ptr = tlv_id_ptr.add(16)
            tlv_data["codec"] = self.analyzeTLVCodec(tlv_codec_ptr)

            tlv_type_description_ptr = tlv_id_ptr.add(24)
            removeDataAt(tlv_type_description_ptr)
            tlv_type_description_data = self.listing.createData(tlv_type_description_ptr, Pointer40DataType())
            tlv_data["type_description"] = getDataAt(tlv_type_description_data.getValue()).getValue()

            result.append(tlv_data)

            # Next TLV
            tlv_id_ptr = tlv_id_ptr.add(32)
            removeDataAt(tlv_id_ptr)
            tlv_id_data = self.listing.createData(tlv_id_ptr, UnsignedIntegerDataType())
            tlv_id = tlv_id_data.getValue().getUnsignedValue()

        # Clear last TLV id check pointer
        removeDataAt(tlv_id_ptr)

        return result


    def writeResult(self, result):
        groupId = result["id"]
        types = result["types"]

        print("Group: " + str(groupId))

        self.luaOutputFile.write("    [" + str(groupId) + "] = {\n")
        self.luaOutputFile.write("        [\"name\"] = \"" + str(result["name"]) + "\",\n")

        for item in types:
            print("\t" + str(item["id"]) + " -> " + item["name"])

            self.luaOutputFile.write("        [" + str(item["id"]) + "] = {\n")
            self.luaOutputFile.write("            name = \"" + item["name"] + "\",\n")
            self.luaOutputFile.write("            mtlvs = {" + ', '.join(map(str, item["mtlvs"])) + "},\n")
            self.luaOutputFile.write("            tlvs = {\n")
            for tlv in item["tlvs"]:
                self.luaOutputFile.write("                [" + str(tlv["id"]) + "] = {\n")
                self.luaOutputFile.write("                    codec = {\n")
                self.luaOutputFile.write("                        length = " + str(tlv["codec"]["length"]) + ",\n")
                self.luaOutputFile.write("                        name = \"" + tlv["codec"]["name"] + "\",\n")
                self.luaOutputFile.write("                    },\n")
                self.luaOutputFile.write("                    type_desc = \"" + tlv["type_description"] + "\"\n")
                self.luaOutputFile.write("                },\n")
            self.luaOutputFile.write("            },\n")
            self.luaOutputFile.write("        },\n")
        self.luaOutputFile.write("    },\n")

analyzer = Analyzer()

# Ask about output directory
if analyzer.askOutputOptions() == None:
    print("! No output directory was received from interactive dialog. Quitting...")
    exit(1)

# Call analyze method
print("* Starting analysis")
analyzer.analyze()
