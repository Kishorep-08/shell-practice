#!/bin/bash

# Q. Count Lines, Words, and Characters
# Write a script that accepts a filename and prints:

# The number of lines
# The number of words
# The number of characters
# ⚠️ Handle edge cases:

# Empty file
# Non-existent file
# Permission denied

read -p "Enter your filename here: " filename

# Check if the file exist or not
if [ ! -e $filename ]
then
    echo "$filename doesn't exist"
    exit 1   # Exit if file doesn't exist
fi

## Check if the file has read permissions or not

if [ ! -r $filename ]
then
    echo "$filename is not readable"
    exit 1
fi

# Check if the file is empty or not
if [ ! -s $filename ]
then
    echo "File is empty: $filename"
else
    lines=$(wc -l < "$filename")
    words=$(wc -w < "$filename")
    characters=$(wc -m < "$filename")

    echo "File= $filename"
    echo "No. of lines= $lines"
    echo "No.of words= $words"
    echo "No.of characters= $characters"
fi