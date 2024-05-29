#!/bin/sh
if [ $# -lt 2 ]
then
echo "Usage: `basename $0` bgr fgr"
exit 1
fi
echo "[$1;$2m"
