#!/bin/bash

/************************************************************************
* File Name   : text_delimiter_remover.sh
* Description : Script to remove text between delimiter in batch
* Usage       : Make the script executable with:
*               chmod +x text_delimiter_remover.sh
*               Run the script with arguments: 
*               bash text_delimiter_remover.sh 'start_delimiter' 
*               'end_delimiter' file1.txt file2.sh file3.md
* Author      : Me
* License     : Free of charge
************************************************************************/

# Check if at least two arguments are provided
if [ $# -lt 3 ]; then
    echo "Usage: $0 'start_delimiter' 'end_delimiter' file1.txt file2.sh ... fileN.md"
    exit 1
fi

# Extract the delimiters
start_delimiter=$1
end_delimiter=$2
shift 2

# Iterate over all files passed as arguments
for file in "$@"; do
    # Check if the file exists
    if [ ! -f "$file" ]; then
        echo "Error: File '$file' not found!"
        continue
    fi

    # Check if the start delimiter exists in the file
    if ! grep -qF "$start_delimiter" "$file"; then
        echo "Error: Start delimiter '$start_delimiter' not found in file '$file'!"
        continue
    fi

    # Check if the end delimiter exists in the file
    if ! grep -qF "$end_delimiter" "$file"; then
        echo "Error: End delimiter '$end_delimiter' not found in file '$file'!"
        continue
    fi

    # Remove text between delimiters from the file
    sed -i "/$start_delimiter/,/$end_delimiter/d" "$file"

    echo "Text between '$start_delimiter' and '$end_delimiter' removed successfully from '$file'."
done
