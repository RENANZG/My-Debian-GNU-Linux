#!/bin/bash

/************************************************************************
* File Name   : text_remover.sh
* Description : Script to remove text in batch.
* Usage       : Make the script executable with:
*               chmod +x text_remover.sh
*               Run the script with arguments: 
*               bash text_remover.sh 'text_to_remove' file1.txt file2.sh
*               file3.md
* Author      : Me
* License     : Free of charge
************************************************************************/

# Check if at least two arguments are provided
if [ $# -lt 2 ]; then
    echo "Usage: $0 'text_to_remove' file1.txt file2.txt ... fileN.txt"
    exit 1
fi

# Extract the text to be removed
text_to_remove=$1
shift 1

# Iterate over all files passed as arguments
for file in "$@"; do
    # Check if the file exists
    if [ ! -f "$file" ]; then
        echo "Error: File '$file' not found!"
        continue
    fi

    # Check if the file contains the text to be removed
    if ! grep -q "$text_to_remove" "$file"; then
        echo "Error: Text '$text_to_remove' not found in file '$file'!"
        continue
    fi

    # Remove the text from the file
    sed -i "s/$text_to_remove//g" "$file"

    echo "Text '$text_to_remove' removed successfully from '$file'."
done
