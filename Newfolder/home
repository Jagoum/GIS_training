#!/bin/bash
# A script that accepts a filename and checks if it exists, then counts the number of lines
if [ "$#" -ne 1 ]; then
    echo "Usage: $0 filename"
    exit 1
fi

file=$1

if [ -f "$file" ]; then
    echo "$file exists."
    line_count=$(wc -l < "$file")
    echo "The file has $line_count lines."
else
    echo "$file does not exist."
    exit 1
fi
