#!/bin/bash
sed '/^[[:space:]]*$/d' quotes.txt
sort quotes.txt | uniq > quotes1.txt
