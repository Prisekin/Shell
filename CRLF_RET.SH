#!/bin/bash

# use for adjust NASM output disassembly files to formated view:
# LF-->CR,LF add 2 CR,LF-s after 'ret' and 'retf' instructions

if [ $# -lt 2 ]
then
echo "Usage $0 input_file output_file"
exit 3
fi
sed -z 's/\x0a/\x0d\x0a/g' $1 | sed -z 's/ret\x0d\x0a/ret\x0d\x0a\x0d\x0a\x0d\x0a/g' | sed -z 's/retf\x0d\x0a/retf\x0d\x0a\x0d\x0a\x0d\x0a/g' > $2