#!/bin/bash

/************************************************************************
* File Name   : text_permanent_insertor.sh
* Description : Script to insert specifc text in batch.
* Usage       : Put the desired text in the script.
*               Make the script executable with:
*               chmod +x text_permanent_insertor.sh
*               Run the script with no arguments: 
*               bash text_permanent_insertor.sh file1.txt file2.sh
*               file3.md
* Author      : Me
* License     : Free of charge
************************************************************************/

# Check if at least one file was provided as an argument
if [ $# -eq 0 ]; then
    echo "Usage: $0 file1.txt file2.sh ... fileN.md"
    exit 1
fi

# Iterate over all files passed as arguments
for file in "$@"; do
    # Check if the file exists
    if [ ! -f "$file" ]; then
        echo "Error: File '$file' not found!"
        continue
    fi

    # Check if the file ends with .sh
    if [[ "$file" != *.sh ]]; then
        echo "Error: File '$file' is not a .sh file!"
        continue
    fi

    # File name
    filename=$(basename "$file")

    # Text to be inserted
    text_to_insert=$(cat <<EOF
    
########################################################################
# VISIT          : 
# SCRIPT CREDITS : https://portable-linux-apps.github.io
# USAGE          :
# Make it executable:
# \$ sudo chmod +x ~/Downloads/$filename
# Then run
# \$ sudo bash ~/Downloads/$filename
########################################################################
EOF
    )

    # Create a temporary file to store the text to be inserted
    temp_file=$(mktemp)

    echo "$text_to_insert" > "$temp_file"

    # Sed command to insert the text after the first line
    sed -i "1r $temp_file" "$file"

    # Remove the temporary file
    rm "$temp_file"

    echo "Text inserted successfully in $file."
done
