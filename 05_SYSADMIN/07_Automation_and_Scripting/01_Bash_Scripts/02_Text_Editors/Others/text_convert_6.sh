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
while IFS= read -r line; do
  if [[ "$line" =~ ^• ]]; then
    # Extract the text and URL
    text=$(echo "$line" | sed -E 's|• (.*) - https?://.*|\1|')
    url=$(echo "$line" | sed -E 's|• .* - (https?://.*)<br>|\1|')
    # Print the formatted line to the output file
    echo "<li><a href=\"$url\" target=\"_blank\">$text</a></li>" >> "$output_file"
  fi
done < "$input_file"

echo "Replacement done in file: $output_file"
