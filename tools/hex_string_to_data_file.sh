#!/bin/bash

# Arg 1 = hex string
# Arg 2 = Output file (will be removed if already exists!)

if [ "$#" -ne 2 ] ; then
    echo "Usage: $0 hex-string ari_bin_raw_packet_file"
    exit
fi

rm -f $2

echo $1 | xxd -r -p >> $2
