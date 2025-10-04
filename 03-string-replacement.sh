#!/bin/bash

# Q. String Replacement in Files
# Write a script that replaces all occurrences of a string in multiple files.

# Replace the string FOO with BAR in all .conf files in a given directory and its subdirectories.

RED="\e[31m"
GREEN="\e[32m"
YELLOW="\e[33m"
NC="\e[0m"

read -p "Enter directory here: " Directory

FILES=$(find -type f -name "*.conf" $Directory)

if [ -z $FILES ]
then
    echo -e "$RED Files not found: $Directory $NC"
else
    for file in $FILES
    do
        echo -e "$YELLOW Replacing strings in: $file $NC"
        sed -i "s/FOO/BAR/g" $file
        echo -e "$GREEN Strings replaced $NC"
    done