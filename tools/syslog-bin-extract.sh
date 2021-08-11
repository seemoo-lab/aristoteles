#!/bin/bash

# This will extract all ARI messages from a syslog and convert them to a hexdump

if [ "$#" -ne 2 ] ; then
    echo "Usage: $0 syslog_text_file output_hexdump.hd"
    exit
fi

cat $1 | sed -n -r 's/(.*CommCenter.*Bin=\['"'"')(.*)('"'"'\])/00000000 \2/p' > $2