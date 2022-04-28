#!/usr/bin/env python3

# Replays a packet, that can additionally be further customized, for manual ARI fuzzing and testing.

import binascii
import os
import argparse
import frida
from colorama import Fore, Back, Style

class IntelCustomPacket:
    """
    Replays a packet and adjusts given fields, and is able to adjust fields in a type aware manner.
    """

    def __init__(self, filename, ios_symbols="arm64e_14.8", log=True, seq_num=None, ari_grp=None, ari_type=None, custom_bytes=None, custom_bits=None, bit_flips=None):
        self.ios_symbols = ios_symbols
        self.log = log

        if os.path.isfile(filename):
            self.orig_packet = bytearray(open(str(filename), "rb").read())
            print("  * Replaying " + str(filename) + " ...")
        # must provide one valid argument
        else:
            print("  ! Invalid file.")
            quit()

        # quit on empty files
        if len(self.orig_packet) == 0:
            print("  ! Cannot customize empty file.")
            quit()

        self.custom_packet = self.orig_packet.copy()

        # Apply customizations:

        if seq_num is not None:
            self.customize_seq_num(seq_num)

        if ari_grp is not None:
            self.customize_group(ari_grp)

        if ari_type is not None:
            self.customize_type(ari_type)

        if custom_bytes is not None:
            for arg in custom_bytes:
                self.customize_specific_byte(arg[0], arg[1])

        if custom_bits is not None:
            for arg in custom_bits:
                self.customize_specific_bit(arg[0], arg[1], arg[2])

        if bit_flips is not None:
            for arg in bit_flips:
                self.customize_flip_bit(arg[0], arg[1])

        self.initializeFridaSession()

        print("  * Initialized IntelCustomPacket instance.")

    def initializeFridaSession(self):
        frida_session = frida.get_usb_device(1).attach("CommCenter")

        self.script = frida_session.create_script(open("frida_ari_functions.js", "r", encoding="utf-8").read())

        self.script.load()
        self.script.exports.setsymbols(self.ios_symbols)
        print("  * Initialized functions with Frida.")

    def reset_customizations(self):
        self.custom_packet = self.orig_packet.copy()

    def customize_seq_num(self, new_seq_num):
        if self.log:
            print("  --> Setting sequence number to " + str(new_seq_num))

        seq_num_part_5 = new_seq_num & 0b000_0111_1111
        seq_num_part_6 = new_seq_num & 0b000_1000_0000
        seq_num_part_8 = new_seq_num & 0b111_0000_0000

        self.custom_packet[5] = (seq_num_part_5 << 1) + (self.orig_packet[5] & 0b0000_0001)
        self.custom_packet[6] = (seq_num_part_6 >> 7) + (self.orig_packet[6] & 0b1111_1110)
        self.custom_packet[8] = (seq_num_part_8 >> 8) + (self.orig_packet[8] & 0b1111_1000)

    def customize_group(self, new_group):
        if self.log:
            print("  --> Setting group to " + str(new_group))

        grp_num_part_4 = new_group & 0b011111
        grp_num_part_5 = new_group & 0b100000

        self.custom_packet[4] = (grp_num_part_4 << 3) + (self.orig_packet[4] & 0b0000_0111)
        self.custom_packet[5] = (grp_num_part_5 >> 5) + (self.orig_packet[5] & 0b1111_1110)

    def customize_type(self, new_type):
        if self.log:
            print("  --> Setting type to " + str(new_type))

        type_num_part_8 = new_type & 0b00_00000011
        type_num_part_9 = new_type & 0b11_11111100

        self.custom_packet[8] = (type_num_part_8 << 6) + (self.orig_packet[8] & 0b0011_1111)
        self.custom_packet[9] = type_num_part_9 >> 2

    def customize_specific_byte(self, new_byte_position, new_byte_value):
        if self.log:
            print("  --> Setting byte " + str(new_byte_position) + " to " + str(new_byte_value))

        self.custom_packet[new_byte_position] = new_byte_value

    def customize_specific_bit(self, byte_position, bit_position, new_bit_value):
        if self.log:
            print("  --> Setting bit " + str(bit_position) + " in byte " + str(byte_position) + " to " + str(new_bit_value))

        if new_bit_value == 1:
            self.custom_packet[byte_position] = self.custom_packet[byte_position] | (1 << bit_position)
        else:
            self.custom_packet[byte_position] = self.custom_packet[byte_position] & ~(1 << bit_position)

    def customize_flip_bit(self, byte_position, bit_position):
        if self.log:
            print("  --> Flipping bit " + str(bit_position) + " in byte " + str(byte_position))

        self.custom_packet[byte_position] = self.custom_packet[byte_position] ^ (1 << bit_position)

    def replay_custom_packet(self):
        # binary string to hex string as it needs to be JSON serializable...
        self.script.exports.sendtocc(binascii.hexlify(self.custom_packet).decode('ascii'))

        if self.log:
            print("  * Done.")

    def get_bin_str(self, packet_bytearray):
        result = bin(int(binascii.hexlify(packet_bytearray), 16))[2:]
        result = result.zfill(len(packet_bytearray) * 8)
        return result

    def print_original(self):
        outputStr = '    '
        inputOrig = self.get_bin_str(self.orig_packet)

        for pos in range(len(inputOrig)):
            outputStr += inputOrig[pos]

            if pos % 8 == 7:
                outputStr += ' '

        print(outputStr)

    def print_result_diff(self):
        outputStr = '    '
        inputOrig = self.get_bin_str(self.orig_packet)
        inputCustom = self.get_bin_str(self.custom_packet)

        for pos in range(len(inputCustom)):
            eq = True

            if pos >= len(inputOrig) or inputCustom[pos] != inputOrig[pos]:
                eq = False

            if eq:
                outputStr += Back.GREEN + Fore.WHITE
            else:
                outputStr += Back.RED + Fore.WHITE

            outputStr += inputCustom[pos]
            outputStr += Style.RESET_ALL

            if pos % 8 == 7:
                outputStr += ' '

            outputStr += Style.RESET_ALL

        print(outputStr)


# Call script
if __name__ == "__main__":
    arg_parser = argparse.ArgumentParser(description="Replays an ARI packet and adjusts given fields, and is able to make type aware customizations for a replay of a single packet.")

    arg_parser.add_argument("File", type=str, help="The file to use as a base for this replay")

    arg_parser.add_argument("--symbols", type=str, nargs='?', default='arm64e_14.8', help="Specify the version / symbols to use eg. arm64_14.6")

    arg_parser.add_argument("-s", "--seq-num", type=int, required=False, help="Override the sequence number for the packet.")

    arg_parser.add_argument("-g", "--group", type=int, required=False, help="Override the group id for the packet.")

    arg_parser.add_argument("-t", "--type", type=int, required=False, help="Override the type id for the packet.")

    arg_parser.add_argument('-c', '--custom-bytes', action='append', nargs='+', type=int, required=False, help="Override a specific byte with a custom value. [First specify the byte, then the desired number]")

    arg_parser.add_argument('-cb', '--custom-bits', action='append', nargs='+', type=int, required=False, help="Override a specific bit with a custom value. [First specify the byte, then the bit (LSB) position to flip, then the desired number]")

    arg_parser.add_argument('-b', '--bit-flip', action='append', nargs='+', type=int, required=False, help="Flips a bit in a specified byte (bit position starts at LSB). [First specify the byte, then the bit (LSB) position to flip]")

    args = arg_parser.parse_args()

    icp = IntelCustomPacket(args.File, ios_symbols=args.symbols, seq_num=args.seq_num, ari_grp=args.group, ari_type=args.type, custom_bytes=args.custom_bytes, custom_bits=args.custom_bits, bit_flips=args.bit_flip)

    print("  Replaying customized packet...")
    print("  Original:")
    icp.print_original()
    print("  Customized:")
    icp.print_result_diff()

    icp.replay_custom_packet()
 
