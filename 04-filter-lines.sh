#!/bin/bash

# Q.Filter Lines from a File
# Write a script that reads a large CSV/log file line by line and filters all lines that contain the word ERROR.
# Save those lines into a separate output file.
# Include a header line in the output.

RED="\e[31m"
GREEN="\e[32m"
YELLOW="\e[33m"
NC="\e[0m"

read -p "Enter file here: " file

if [ !-e $file ]
then
    echo -e "File not found: ..... "$RED" exitting "$NC" "
    exit 1
fi

output="errors_output.log"

echo -e "Filtering lines .... $YELLOW Processing $NC"

grep "ERROR" $file >> $output

echo -e "Filtering completed .... $GREEN Success $NC"
echo -e "$GREEN Saved to output file:$NC $output"