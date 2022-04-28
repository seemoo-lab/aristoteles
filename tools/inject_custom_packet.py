#!/usr/bin/env python3

# Creates a custom packet, that can then be injected for manual ARI fuzzing / testing.
import binascii
import argparse
import frida
from libari.libari.packet import Packet
from libari.libari.tlv import TLV

class IntelCustomPacket:
    """
    Creates a packet and injects the created packet via frida.
    """

    def __init__(self, ios_symbols="arm64e_14.8", log=True, dir_bb=False, ari_seq=None, ari_grp=None, ari_message_id=None, ari_trx=None, ari_length=None, ari_tlvs=None, ari_custom_bits=None):
        self.ios_symbols = ios_symbols
        self.log = log
        self.to_baseband = dir_bb
        self.custom_bits = None

        self.custom_packet = Packet()

        # Apply values:
        if ari_seq is not None:
            if self.log:
                print("  --> Setting sequence number to " + str(ari_seq) + " (Note: This might be 0 in the syslog since it will be converted to 0 for packets that do not have a seq num)")

            self.custom_packet.seq = ari_seq

        if ari_length is not None:
            if self.log:
                print("  --> Setting length to " + str(ari_length))

            self.custom_packet.length = ari_length

        if ari_trx is not None:
            if self.log:
                print("  --> Setting transaction id to " + str(ari_trx))

            self.custom_packet.trx = ari_trx

        if ari_grp is not None:
            if self.log:
                print("  --> Setting group to " + str(ari_grp))

            self.custom_packet.group = ari_grp

        if ari_message_id is not None:
            if self.log:
                print("  --> Setting message id to " + str(ari_message_id))

            self.custom_packet.message_id = ari_message_id

        if ari_tlvs is not None:
            for tlv in ari_tlvs:
                tlv_id = int(tlv[0])
                tlv_version = int(tlv[1])
                tlv_data = binascii.unhexlify(tlv[2])

                if self.log:
                    print("  --> Adding TLV with id " + str(tlv_id))

                self.custom_packet.addTLV(TLV(id=tlv_id, version=tlv_version, data=tlv_data))

        if ari_custom_bits is not None:
            self.custom_bits = ari_custom_bits

        self.initializeFridaSession()

    def customize_specific_bit(self, packet, byte_position, bit_position, new_bit_value):
        if self.log:
            print("  --> Setting bit " + str(bit_position) + " in byte " + str(byte_position) + " to " + str(new_bit_value))

        if new_bit_value == 1:
            packet[byte_position] = packet[byte_position] | (1 << bit_position)
        else:
            packet[byte_position] = packet[byte_position] & ~(1 << bit_position)

    def initializeFridaSession(self):
        frida_session = frida.get_usb_device(1).attach("CommCenter")

        self.script = frida_session.create_script(open("frida_ari_functions.js", "r", encoding="utf-8").read())

        self.script.load()
        self.script.exports.setsymbols(self.ios_symbols)

        if self.log:
            print("  * Initialized functions with Frida.")

    def inject_custom_packet(self):
        packet = self.custom_packet.pack()

        # Apply customizations
        if self.custom_bits is not None:
            for arg in self.custom_bits:
                self.customize_specific_bit(packet, arg[0], arg[1], arg[2])

        # binary string to hex string as it needs to be JSON serializable...
        hexStr = binascii.hexlify(packet).decode('ascii')

        if self.to_baseband:
            self.script.exports.sendtobb(hexStr)
        else:
            self.script.exports.sendtocc(hexStr)

        if self.log:
            print("  * Done.")

    def print_result(self):
        outputStr = '    '
        inputOrig = self.custom_packet.getHexString()

        for pos in range(len(inputOrig)):
            outputStr += inputOrig[pos]

            if pos % 2 == 1:
                outputStr += ' '

        print(outputStr)


# Call script
if __name__ == "__main__":
    arg_parser = argparse.ArgumentParser(description="Creates a custom ARI packet and injects the packet via Frida.")

    arg_parser.add_argument("--silent", action='store_true', help="Sets the log output to silent.")

    arg_parser.add_argument("-d", "--dry-run", action='store_true', help="Will only output the packet instead of injecting it.")

    arg_parser.add_argument("--symbols", type=str, nargs='?', default='arm64e_14.8', help="Specify the version / symbols to use eg. arm64_14.6")

    arg_parser.add_argument("-b", "--to-baseband", action='store_true', help="Send this packet to the baseband instead of the commcenter.")

    arg_parser.add_argument("-s", "--seq-num", type=int, required=False, help="Sets the sequence number for the packet.")

    arg_parser.add_argument("-g", "--group", type=int, required=False, help="Sets the group id for the packet.")

    arg_parser.add_argument("-t", "--type", type=int, required=False, help="Sets the message id for the packet.")

    arg_parser.add_argument("-m", "--mid", type=int, required=False, help="Sets the message id for the packet.")

    arg_parser.add_argument("-l", "--length", type=int, required=False, help="Sets the length for the packet (is otherwise calculated automatically!).")

    arg_parser.add_argument("-x", "--transaction", type=int, required=False, help="Sets the transaction id for the packet.")

    arg_parser.add_argument('--tlv', action='append', type=str, nargs='+', required=False, help="Add a TLV to the packet. [First specify the id, then the version and data as hex string]")

    arg_parser.add_argument('-cb', '--custom-bits', action='append', nargs='+', type=int, required=False, help="Override a specific bit with a custom value. [First specify the byte, then the bit (LSB) position to flip, then the desired number]")

    args = arg_parser.parse_args()

    icp = IntelCustomPacket(ios_symbols=args.symbols, log=not args.silent, dir_bb=args.to_baseband, ari_seq=args.seq_num, ari_grp=args.group, ari_message_id=args.type or args.mid, ari_length=args.length, ari_trx=args.transaction, ari_tlvs=args.tlv, ari_custom_bits=args.custom_bits)

    print("  Injecting custom packet...")
    print("  Packet:")

    icp.print_result()

    if not args.dry_run:
        icp.inject_custom_packet()
    else:
        print("  Dry run: Did not inject packet!")
