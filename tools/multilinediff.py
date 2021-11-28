#!/usr/bin/env python3

# Input from stdin is expected to be a hexstream string eg.: "dec07eab205e3b00" per line.
# This script will show bits that differ between all packets that were read from stdin.

import sys
from colorama import Fore, Back, Style

if sys.stdin.isatty():
    print('%s No STDIN input found %s' % (Fore.RED, Style.RESET_ALL))
    exit(1)

inputLines = []

for line in sys.stdin:
    inputLines.append(bin(int(line[:-1], 16))[2:])

if len(inputLines) <= 1:
    print('%s Not enough input lines to analyze a diff (<= 1) %s' % (Fore.RED, Style.RESET_ALL))
    exit(1)

referenceLine = inputLines[0]
outputStr = ''

for pos in range(len(referenceLine)):
    eq = True

    for line in inputLines:
        if pos >= len(line) or line[pos] != referenceLine[pos]:
            eq = False
            break
    if eq:
        outputStr += Back.GREEN + Fore.WHITE
    else:
        outputStr += Back.RED + Fore.WHITE

    outputStr += referenceLine[pos]
    outputStr += Style.RESET_ALL

    if pos % 8 == 7:
        outputStr += ' '

print(outputStr)
