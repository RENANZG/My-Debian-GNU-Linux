#!/bin/bash

/************************************************************************
* File Name   : text_insertor.sh
* Description : Script to insert text in batch
* Usage       : Make the script executable with:
*               chmod +x text_insertor.sh
*               Run the script with arguments: 
*               bash text_insertor.sh 'text_to_insert' file1.txt file2.sh
*               file3.md
* Author      : Me
* License     : Free of charge
************************************************************************/

# Check if at least two arguments are provided
if [ $# -lt 2 ]; then
    echo "Usage: $0 'text_to_insert' file1.txt file2.txt ... fileN.txt"
    exit 1
fi

# Extract the text to be inserted
text_to_insert=$1
shift 1

# Iterate over all files passed as arguments
for file in "$@"; do
    # Check if the file exists
    if [ ! -f "$file" ]; then
        echo "Error: File '$file' not found!"
        continue
    fi

    # Check if the file already contains the text to be inserted
    if grep -qF "$text_to_insert" "$file"; then
        echo "Error: Text '$text_to_insert' already exists in file '$file'!"
        continue
    fi

    # Insert the text into the file
    echo "$text_to_insert" >> "$file"

    echo "Text '$text_to_insert' inserted successfully into '$file'."
done
