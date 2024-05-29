#!/bin/sh
type()
{
 echo "Signal $1 received"
}
trap "type 2" 2
trap "type 3" 3
while :
do
read INP
case $INP in
q) break;;
*) echo "???"
esac
done
trap 2 3