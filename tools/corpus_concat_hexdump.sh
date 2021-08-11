#!/bin/bash

# Arg 1 = Folder to search
# Arg 2 = Output file (will be removed if already exists!)

if [ "$#" -ne 2 ] ; then
    echo "Usage: $0 ari_trace/ wireshark_input.hd"
    exit
fi

rm -f $2

for file in `ls -v $1/*`
do
    echo $file
    cat $file | od -Ax -tx1 -v >> $2
done
