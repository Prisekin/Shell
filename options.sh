#!/usr/local/bin/bash
OPTSTRING=a:z:x:cmnpq
RESULT=4
while getopts :$OPTSTRING OPT
do
case $OPT in
a) echo "Option1: $OPT ARG=$OPTARG";;
z) echo "Option2: $OPT ARG=$OPTARG";;
x) echo "Option3: $OPT ARG=$OPTARG";;
c) echo "Option4: $OPT";;
m) echo "M (multitpy by 2)"; RESULT=`expr $RESULT \* 2`;;
n) echo "N (add 3)"; RESULT=`expr $RESULT + 3`;;
\?) echo " Invalid option. Usage `basename $0` -`echo $OPTSTRING | sed "s/:/ [value] -/g"`";;
*) echo "Another option";;
esac
done
echo "Space divided options used: `expr $OPTIND - 1`"
echo "Result=$RESULT"
