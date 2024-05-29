#!/usr/local/bin/bash
counter=0
while [ $counter -lt 15 ]
do
 echo "number: $counter" `expr $counter \* $counter \* $counter % 11`
 counter=`expr $counter + 1`
done
counter=0
while read A B
do
echo "A=$A" "B=$B"
counter=`expr $counter + 1`
done <files.awk
echo "total lines in file: $counter"