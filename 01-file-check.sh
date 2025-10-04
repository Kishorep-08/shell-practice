#!/bin/bash

# 1. File Existence & Permissions
# Write a script that accepts a filename (or path) as a command-line argument and prints whether:

# The file exists
# It is readable
# It is writable
# Or it is not present
# 👉 Extension: If the argument is a directory, list all files inside it.


read -p "Enter your filepath here" filepath

if [ -f $filepath ]
then
    echo "File exists: $filepath"

    if [ -r $filepath ]
    then
        echo "$filepath: is readable"
    else
        echo "$filepath: is not readable"
    fi

    if [ -w $filepath ]
    then
        echo "$filepath: is writable"
    else
        echo "$filepath: is not writable"
    fi

elif [ -d $filepath ]
then
    echo "$filepath: is a directory, listing contents"
    ls -l $filepath

else
    echo "file not found: $filepath"
fi