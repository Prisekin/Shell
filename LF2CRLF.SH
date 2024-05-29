#!/bin/bash

# convert Linux LF-ended strings in file to DOS format CR,LF ended strings

if [ $# -lt 2 ]
then
echo "Usage $0 input_file output_file"
exit 3
fi
sed -z 's/\x0a/\x0d\x0a/g' $1 > $2