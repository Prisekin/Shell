#!/bin/sh
ls -l | awk '/^[^d]/ {if($5!=NULL){summ+=$5; count+=1; print count ": " $9, $5;}}\
 END{print "Vsego: " summ " bytes in " count  " files."}'
