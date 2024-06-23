#!/bin/bash

# Check if a file path is provided as an argument
if [ $# -ne 1 ]; then
  echo "Usage: $0 <file>"
  exit 1
fi

input_file="$1"

# Get the directory, filename without extension, and extension
input_dir=$(dirname "$input_file")
input_filename=$(basename "$input_file")
filename_without_extension="${input_filename%.*}"
extension="${input_filename##*.}"

# Generate a timestamped output file name
timestamp=$(date +"%Y%m%d%H%M%S")
output_file="${input_dir}/${filename_without_extension}_converted_$timestamp.$extension"

# Process the input file
{
  # Initialize a flag to track if we are reading a URL
  reading_url=false
  while IFS= read -r line; do
    if [[ "$line" =~ ^• ]]; then
      if $reading_url; then
        echo "Error: Encountered new item before reading URL for previous item."
        exit 1
      fi
      # Extract the text
      text="${line:2}"
      reading_url=true
    elif $reading_url; then
      # Extract the URL and print the formatted line to the output file
      url="${line%<br>}"
      echo "<li><a href=\"$url\" target=\"_blank\">$text</a></li>" >> "$output_file"
      reading_url=false
    fi
  done
} < "$input_file"

echo "Replacement done in file: $output_file"
