#!/bin/bash

/************************************************************************
* File Name   : secure_7z_encrypt.sh
* Description : This script encrypts files in a directory using 7z with 
*               password protection and an encrypted header. It securely 
*               handles the password by temporarily storing it in a file 
*               with restricted permissions and cleaning up the file 
*               after use.
* Usage       : Make the script executable with 
*               chmod +x secure_7z_encrypt.sh
*               Run the script with the following arguments: 
*               bash secure_7z_encrypt.sh /input/directory 
*               /output/archive.7z
* Author      : Me and the bois
* License     : Free of charge
************************************************************************/

# Function to display usage information
usage() {
    echo "Usage: $0 /input/directory /output/archive.7z"
    exit 1
}

# Ensure the correct number of arguments are provided
if [ $# -ne 2 ]; then
    usage
fi

input_dir="$1"
output_archive="$2"

# Check if input directory exists
if [ ! -d "$input_dir" ]; then
    echo "Input directory '$input_dir' not found."
    exit 1
fi

# Ensure output directory exists, create if not
output_dir=$(dirname "$output_archive")
if [ ! -d "$output_dir" ]; then
    mkdir -p "$output_dir"
fi

# Prompt for password securely
read -sp "Enter password: " password
echo

# Create a temporary file for the password
pw_file=$(mktemp)
chmod 600 "$pw_file"
echo -n "$password" > "$pw_file"

# Encrypt files using 7z and the password file
7z a -p"$(cat $pw_file)" -mhe=on -scrc=AES256 "$output_archive" "$input_dir"

# Check if the encryption was successful
if [ $? -eq 0 ]; then
    echo "Encryption complete."
else
    echo "Encryption failed."
    rm -f "$pw_file"
    exit 1
fi

# Clean up the temporary password file
rm -f "$pw_file"
