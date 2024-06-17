#!/bin/bash

########################################################################
# File Name   : duplicate_files_locator.sh
# Description : Script to locate duplicate files based on size and hash
# Usage       : • Make the script executable with 
#                 sudo chmod +x duplicate_files_locator.sh
#               • Run the script with no arguments: 
#                 bash duplicate_files_locator.sh
# Author      : Me and the bois
# License     : Free of charge, no warranty
########################################################################

echo "Finding and identifying duplicate files..."

# Find all non-empty files, sort them by size, and identify duplicates based on size
find . -not -empty -type f -printf "%s\n" | sort -rn | uniq -d |
while read -r size; do
    echo "Duplicates for files of size ${size} bytes:"
    # Find files of the same size
    find . -type f -size "${size}c" -print0 |
    # Calculate MD5 hash and sort based on hash
    xargs -0 md5sum |
    sort |
    # Identify files with duplicate hashes
    uniq -w32 --all-repeated=separate |
    # Print hash, file size, and file paths
    awk '{print "Hash: "$1", Size: '$size' bytes, File: "$2}'
done

echo "Done."
