#!/bin/sh
color()
{
 echo -n "[$1;$2m"
}
COUNT=1
echo "[1m"
ls -lia | sed '1d' | while read FILE_ID RIGHTS THREE FOUR FIVE SIZE SEVEN EIGHT TIME NAME
do
 color 40 37; echo -n "$COUNT: "
 color 40 31; echo -n "$FILE_ID "
 color 40 36; echo -n "$RIGHTS "
 color 40 33; echo -n "$SIZE "
 color 40 34; echo -n "$TIME "
 color 40 32; echo "$NAME"
 COUNT=`expr $COUNT + 1`
done
color 40 37
echo "[0m"