#!/bin/sh
OUT_FILE=ret_codes.txt
NUMBER=0
rm $OUT_FILE
while [ $NUMBER -le 256 ]
do
./ret_code $NUMBER
echo "$NUMBER $?" >> $OUT_FILE
NUMBER=`expr $NUMBER + 1`
done
echo "Ret codes processed"