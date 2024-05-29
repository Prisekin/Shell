#!/bin/bash
awk '/20/ {print "File: [" FILENAME "] " $0}' `ls`