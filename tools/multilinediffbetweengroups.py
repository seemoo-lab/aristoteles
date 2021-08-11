#!/usr/bin/env python3

# This script shows differences of groups of packets like the `multilinediff.py` script, but
# will also only consider differences between all groups of packets where the bit differs between the groups
# but does not differ in a group itself.
# It expects at least a single file (then is similar to the `multilinediff.py`) as an argument.
# Each file represents a group of packets and should contain packets in a hexstream string e.g.: "dec07eab205e3b00" per line.
#
# NOTE: Also make sure that the first packet has the most / the same amount of bytes than all others, otherwise this script wont work!

from colorama import Fore, Back, Style
import sys

if len(sys.argv) < 2:
    print('%s This needs at least 1 filename arguments to run! %s' % (Fore.RED, Style.RESET_ALL))
    exit(1)

files = sys.argv[1:]

overallfirstPacket = ''
overallSimilarity = []

for filename in files:
    curfile = open(filename, 'r')
    input = []

    for line in curfile.readlines():
        input.append(bin(int(line[:-1], 16))[2:])

    if len(input) < 1:
        print('%s Not enough input lines to analyze a diff (< 1) %s' % (Fore.RED, Style.RESET_ALL))
        exit(1)

    if len(overallfirstPacket) == 0:
        overallfirstPacket = input[0]
        overallSimilarity = [False] * len(overallfirstPacket)

    referenceLine = input[0]
    outputStr = ''

    for pos in range(len(overallfirstPacket)):
        eq = True

        for line in input:
            if pos >= len(line) or line[pos] != referenceLine[pos]:
                eq = False
                break

        if eq:
            outputStr += Back.GREEN + Fore.WHITE
        else:
            outputStr += Back.RED + Fore.WHITE
        
        if not eq or overallfirstPacket != referenceLine and overallfirstPacket[pos] == referenceLine[pos]:
            overallSimilarity[pos] = True

        outputStr += referenceLine[pos]
        outputStr += Style.RESET_ALL
        
        if pos % 8 == 7:
            outputStr += ' '

    print(outputStr)


outputStrEnd = ''

for pos in range(len(overallfirstPacket)):

    if overallSimilarity[pos]:
        outputStrEnd += Back.GREEN + Fore.WHITE
    else:
        outputStrEnd += Back.RED + Fore.WHITE

    outputStrEnd += overallfirstPacket[pos]
    outputStrEnd += Style.RESET_ALL
    
    if pos % 8 == 7:
        outputStrEnd += ' '

print(outputStrEnd)