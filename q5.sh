#!/bin/bash
read test
echo $test | awk 'BEGIN { FS = "" } { for (i=NF; i>1; i--) printf("%s",$i); print $1; }' 
echo $test | awk 'BEGIN { FS = "" } { for (i=NF; i>1; i--) printf("%s",$i); print $1; }' | tr 'a-zA-Z' 'b-zA-Za'
echo $test | awk 'BEGIN { FS = "" } { for (i=int(NF/2); i>0; i--) printf("%s",$i); for (i=int(NF/2)+1; i<=NF; i++) printf("%s",$i); print "" }'
