#!/bin/sh
COUNT=0
echo "Parameters count: $#"
while [ $# -gt 0 ]
do
echo "par[$COUNT]=$1 rest($#)"
COUNT=`expr $COUNT + 1`
shift
done