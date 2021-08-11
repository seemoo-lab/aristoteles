#!/usr/bin/env python3

import binascii
import time
import sys
import os
import struct
from datetime import datetime
import argparse
from colorama import Fore, Back, Style
from libari.libari.packet import Packet
from libari.libari.tlv import TLV

# Call script
if __name__ == "__main__":
    arg_parser = argparse.ArgumentParser(description="Analyzes an ARI packet and outputs basic information.")
    
    arg_parser.add_argument("data", type=str, help="the hex string of the packet data")
    
    args = arg_parser.parse_args()
    
    pkt = Packet.fromBytes(binascii.unhexlify(args.data))
    
    print("  Packet:")
    print("  |-> Group:  " + str(pkt.group))
    print("  |-> Type:   " + str(pkt.type))
    print("  |-> Length: " + str(pkt.length))
    print("  |-> SEQ:    " + str(pkt.seq))
    print("  |-> TRX:    " + str(pkt.trx))
    print("  |-> TLVs:   " + str(len(pkt.tlvs)))
