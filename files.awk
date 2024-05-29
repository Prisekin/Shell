#!/usr/bin/awk -f
BEGIN{print "File name\tSize\tRights";
print "______________________________________________________________________";}
{if($9!=NULL){sum+=$5; print $9"\t"$5"\t"$1}}
END{print "Total bytes in all files: " sum}
