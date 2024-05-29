#!/bin/sh
getopts asdf OPTLETTER
echo $OPTLETTER
COUNT=1
echo "[40;31m"
echo "[1m"
ls -l | sed '1d'| while read STRNG
do
RIGHTS=`echo $STRNG | awk '{print $9}'`
echo "$COUNT: $RIGHTS"
COUNT=`expr $COUNT + 1`
done
echo "[40;37m"