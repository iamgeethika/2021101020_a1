#!/bin/bash
cat quotes.txt | wc -c
cat quotes.txt | wc -l
cat quotes.txt | wc -w
awk '{print "Line No: "  NR ,"- Count of Words: "  NF }' quotes.txt
awk '{for(i = 1; i <= NF; i++) {a[$i]++}} END {for(k in a) if(a[k] > 1) {print "Word: "  k ,"- Count of repetition: "  a[k] }}' quotes.txt
