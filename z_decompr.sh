#!/bin/sh
if [ $# -eq 2 ]
then
zlib-flate -uncompress <$1 >$2
else
echo "Usage: $0 compressed_file decompressed_file"
exit 3
fi