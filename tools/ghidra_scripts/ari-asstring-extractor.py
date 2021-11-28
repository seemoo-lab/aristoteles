# Extract AsString methods from iOS dylibs.
# This requires to run the auto analysis on the file beforehand, as it will
# iterate over all known AsString functions.
#
#@author saibotk
#@category ARI.asstring
#@keybinding
#@menupath
#@toolbar

from ghidra.app.decompiler import DecompileOptions
from ghidra.app.decompiler import DecompInterface
from ghidra.util.task import ConsoleTaskMonitor
from ghidra.program.model.pcode import PcodeOp
from ghidra.program.model.scalar import Scalar
from ghidra.program.model.data import Pointer40DataType
from ghidra.app.emulator import EmulatorHelper

import binascii
import os
import datetime

class Resolver:
    countStringFunctions = 0
    countSwitchFunctions = 0
    countIfNotFunctions = 0
    countPointerFunctions = 0
    rootDir = '/mnt/host/ghidra/'

    def askOutputOptions(self):
        directory = askDirectory("Where should the output be located?", "Start Extraction")

        if directory is not None:
            self.rootDir = directory.getAbsolutePath() + "/"

            print("* Analysis output will be written to: '" + self.rootDir + "'")

            return True

        return None

    def analyze(self):
        # Initialize output directory
        self.luaOutputDir = os.path.realpath(self.rootDir + 'ari-asstring-extractor-output-{date:%Y-%m-%d_%H:%M:%S}'.format( date=datetime.datetime.now() ))
        if not os.path.exists(self.luaOutputDir):
            os.mkdir(self.luaOutputDir)

        # Initialize variables and interfaces
        self.listing = currentProgram.getListing()
        fm = currentProgram.getFunctionManager()
        self.funcs = fm.getFunctions(True)
        self.ifc = DecompInterface()
        options = DecompileOptions()
        monitor = ConsoleTaskMonitor()
        self.ifc.setOptions(options)

        self.countStringFunctions = 0
        self.countSwitchFunctions = 0
        self.countIfNotFunctions = 0
        self.countPointerFunctions = 0

        result = []
        unresolved = []

        # Iterate over all functions and analyze them with all possible variants
        for func in self.funcs:
            if not 'asString' in func.getName():
                continue

            self.ifc.openProgram(func.getProgram())
            res = self.ifc.decompileFunction(func, 60, monitor)
            hFunc = res.getHighFunction()
            func = res.getFunction()
            paramName = func.getParameter(0).getFormalDataType().getName()

            # Check for pointer symbols in params to exclude asString(void*) functions
            if '*' in paramName:
                print("\tGot asString(" + paramName + ") skipping!")
                continue

            self.countStringFunctions += 1

            print(paramName)
            print(func.getEntryPoint().toString(False))

            # Try all extraction methods and gather their results
            successPointer, resultPointer = self.extractPointerReference(hFunc)
            successIfNot, resultIfNot = self.extractNotIfReference(hFunc)

            # Output a warning when more than one variant returned successfully
            if successPointer and successIfNot:
                print("WARNING:")
                print("\tResolved to both variants! Check code and try to exclude the wrong variant!")
                break

            # Count the result and append to results list
            if successPointer:
                self.countPointerFunctions += 1
                print("\tResolved as Pointer")
                result.append((paramName, resultPointer))
            elif successIfNot:
                self.countIfNotFunctions += 1
                print("\tResolved as IfNot")
                result.append((paramName, resultIfNot))
            else:
                unresolved.append(hFunc)
                print("\tCould not resolve - printing pcodeops instead:")
                for pcodeop in hFunc.getPcodeOps():
                    print("\t\t" + str(pcodeop))

        # Output the result as lua code
        self.writeResult(result)

        print("* Extracted info from " + str(self.countPointerFunctions + self.countIfNotFunctions + self.countSwitchFunctions) + "/" + str(self.countStringFunctions) + " functions")

        # Output some statistics
        if len(unresolved) > 0:
            print("Could not resolve " + str(len(unresolved)) + " functions:")
            for hfunc in unresolved:
                func = hfunc.getFunction()
                paramName = func.getParameter(0).getFormalDataType().getName()
                print("\t" + paramName + " - Location: " + func.getEntryPoint().toString(False))

        print("* Saved output to: " + os.path.realpath(self.luaOutputDir))

    def writeResult(self, result):
        self.luaOutputFile = open(self.luaOutputDir + "/ari_tlv_as_string_data.lua", "w", encoding="utf-8")
        self.luaOutputFile.write("--- AUTO GENERATED OUTPUT from Ghidra script \"ari-asstring-extractor.py\" on {date:%Y-%m-%d_%H:%M:%S} \n".format( date=datetime.datetime.now() ))
        self.luaOutputFile.write("return {\n")

        for method in result:
            self.luaOutputFile.write("    [\"" + str(method[0]) + "\"] = {\n")

            for item in method[1]:
                self.luaOutputFile.write("        [" + str(item[0]) + "] = \"" + item[1] + "\",\n")

            self.luaOutputFile.write("    },\n")

        self.luaOutputFile.write("}\n")
        self.luaOutputFile.close()

    def extractNotIfReference(self, hFunc):
        result = []
        func = hFunc.getFunction()
        body = func.getBody()

        # Precheck if this is a function we want to analyze at all
        for pcodeop in hFunc.getPcodeOps():
            opcode = pcodeop.getOpcode()

            # Safety checks for operands in pcode that are never found in "not if" functions
            if opcode == PcodeOp.BRANCHIND or opcode == PcodeOp.BRANCH or opcode == PcodeOp.PTRSUB:
                return False, result

        instructions = self.listing.getInstructions(body, True)
        lastCompareVal = None # Stores the integer value from the comparison -> the value that is mapped to the string that will be outputted by the AsString function
        monitor = ConsoleTaskMonitor()
        emuHelper = EmulatorHelper(currentProgram)
        emuHelper.getEmulator().setExecuteAddress(func.getEntryPoint().getOffset())

        # Iterate through all instructions and emulate instructions step by step.
        while instructions.hasNext():
            instruction = instructions.next()
            mne = instruction.getMnemonicString()

            if mne == "cmp":
                insPcode = instruction.getPcode()[0]
                inputVarnode = insPcode.getInput(0)

                if inputVarnode.isRegister():
                    lastCompareVal = emuHelper.readRegister(currentProgram.getRegister(inputVarnode).getName())
                elif inputVarnode.isConstant():
                    lastCompareVal = inputVarnode.getOffset()
                else:
                    print("! DIFFERENT TYPE AS PARAM FOR COMPARE:")
                    print(inputVarnode)
            elif mne == "csel" and lastCompareVal is not None: # Only match CSEL instructions that occur after a CMP instruction
                insPcode = instruction.getPcode()[0]

                # If this is a "csel" with "ne" flag (always has a BOOL_NEGATE as the first pcode) use last valid register
                if insPcode.getOpcode() == PcodeOp.BOOL_NEGATE:
                    for pcodeop in instruction.getPcode():
                        if pcodeop.getOpcode() == PcodeOp.COPY and currentProgram.getRegister(pcodeop.getInput(0)):
                            insPcode = pcodeop

                inputVarnode = insPcode.getInput(0)

                valueReg = currentProgram.getRegister(inputVarnode).getName()
                valueAdrLong = emuHelper.readRegister(valueReg)
                valueAdr = toAddr(valueAdrLong)
                value = getDataAt(valueAdr).getValue()
                result.append((lastCompareVal, value))
                lastCompareVal = None

            # Break if we find any indicator of a switch case or a construct that is not only based on if-nots
            elif mne == "b.hi" or mne == "ldr":
                break

            emuHelper.step(monitor)

        return len(result) > 0, result

    def extractPointerReference(self, hFunc):
        pcoCmpLess = None
        pcoPrtSub = None
        leftSideAdditionalAdd = 0
        leftSideAdditionalSub = 0

        # Find all necessary operands
        for pcodeop in hFunc.getPcodeOps():
            if pcodeop.getOpcode() == PcodeOp.INT_ADD and pcoCmpLess is None:
                leftSideAdditionalAdd += pcodeop.getInput(1).getOffset()
            if pcodeop.getOpcode() == PcodeOp.INT_SUB and pcoCmpLess is None:
                leftSideAdditionalSub -= pcodeop.getInput(1).getOffset()
            if pcodeop.getOpcode() == PcodeOp.INT_LESS:
                pcoCmpLess = pcodeop
            if pcodeop.getOpcode() == PcodeOp.PTRSUB:
                pcoPrtSub = pcodeop
                break

		# Check if we found all needed operands for this to be evaluated as a pointer reference
        if pcoPrtSub is not None and pcoCmpLess is not None:
            cmpLessNum = pcoCmpLess.getInput(1).getOffset() # Constant -> Offset equals value
            pointerAddr = pcoPrtSub.getInput(1).getAddress()
            pointerAddr = toAddr(pointerAddr.toString(False)) # Remove "Constant" space association to be able to get the bytes from this address

            result = []

            for n in range((- leftSideAdditionalAdd + (- leftSideAdditionalSub)), cmpLessNum - leftSideAdditionalAdd + (- leftSideAdditionalSub)):
                addr = pointerAddr.add(8 * (n + leftSideAdditionalAdd + leftSideAdditionalSub))
                removeDataAt(addr)
                dataObj = self.listing.createData(addr, Pointer40DataType())
                resolvedString = getDataAt(dataObj.getValue()).getValue()
                result.append((n, resolvedString))

            return len(result) > 0, result
        else:
            return False, None

resolver = Resolver()

# Ask about output directory
if resolver.askOutputOptions() == None:
    print("! No output directory was received from interactive dialog. Quitting...")
    exit(1)

# Call analyze method
print("* Starting analysis")
resolver.analyze()
