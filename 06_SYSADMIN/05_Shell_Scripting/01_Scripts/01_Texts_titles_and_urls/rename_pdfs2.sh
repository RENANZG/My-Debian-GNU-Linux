#!/bin/bash

########################################################################
# File Name    : rename_pdfs.sh
# Description  : Batch rename PDF files based on title, author, and date *                metadata tags
# Dependencies : exiftool
# Usage        : • Make the script executable with 
#                  sudo chmod +x rename_pdfs.sh
#                • Run the script with either a directory path or a 
#                single file:
#                  bash rename_pdfs.sh /path/to/your/directory
#                  bash rename_pdfs.sh /path/to/your/file.pdf
# Author       : Me and the bois
# License      : Free of charge, no warranty
########################################################################

# Check if argument is provided
if [ $# -ne 1 ]; then
    echo "Usage: bash rename_pdfs.sh /path/to/your/directory_or_file"
    exit 1
fi

# Input path (directory or file)
INPUT="$1"

# Validate if input exists
if [ ! -e "$INPUT" ]; then
    echo "Error: '$INPUT' not found."
    exit 1
fi

# Function to rename PDF files in a directory
rename_files_in_directory() {
    local dir="$1"
    exiftool -r '-filename<${Title;s/ /_/g}_-_${Author;s/ /_/g}_(${CreateDate#;DateFmt("%Y")}).%e' "$dir" -ext pdf
}

# Check if input is a directory
if [ -d "$INPUT" ]; then
    rename_files_in_directory "$INPUT"
elif [ -f "$INPUT" ]; then
    # Check if input is a file
    if [[ "$INPUT" == *.pdf ]]; then
        # Rename single PDF file
        title=$(exiftool -s -s -s -Title "$INPUT")
        author=$(exiftool -s -s -s -Author "$INPUT")
        creation_date=$(exiftool -s -s -s -CreateDate "$INPUT" | awk '{print substr($1, 1, 4)}')
        
        title_snake=$(echo "$title" | sed 's/ /_/g')
        author_snake=$(echo "$author" | sed 's/ /_/g')
        year=$(echo "$creation_date")
        
        new_filename="${title_snake}_${author_snake}_(${year}).pdf"
        
        echo "Renaming '$INPUT' to '$new_filename'"
        mv -n "$INPUT" "$(dirname "$INPUT")/$new_filename"
    else
        echo "Error: '$INPUT' is not a PDF file."
        exit 1
    fi
else
    echo "Error: '$INPUT' is neither a directory nor a file."
    exit 1
fi
