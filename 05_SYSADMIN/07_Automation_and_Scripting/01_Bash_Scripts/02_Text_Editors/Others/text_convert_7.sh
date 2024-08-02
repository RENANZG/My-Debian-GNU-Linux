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

# Clear the output file if it exists
> "$output_file"

# Process the input file
while IFS= read -r url; do
  # Remove <br> tags from the URL
  url=$(echo "$url" | sed 's/<br>//g')
  # Print the formatted anchor tag to the output file
  echo "<a href=\"$url\">$url</a>" >> "$output_file"
done < "$input_file"

echo "Conversion done. Output saved to: $output_file"
