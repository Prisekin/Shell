#!/bin/sh
if [ $# -eq 2 ]
then
kill -s $1 `ps -a | grep $2 | sed -n '1p' | awk '{print $1}'`
else
echo "Usage: `basename $0` SIGNAL process"
fi