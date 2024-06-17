#!/bin/bash

# Check if a file path is provided as an argument
if [ $# -ne 1 ]; then
  echo "Usage: $0 <file>"
  exit 1
fi

file="$1"

# Check if the file exists
if [ ! -f "$file" ]; then
  echo "File not found: $file"
  exit 1
fi

# Add debug output
echo "Processing file: $file"

# Use sed to perform the replacement
sed -E "s|<li><code><span>\$</span> ([^<]*)</code></li>|<li><pre><code><span>\$</span> \1</code></pre><button onclick=\"navigator.clipboard.writeText('\1')\">Copy</button></li>|g" "$file" > temp_file

# Check the difference between original and temp file
diff "$file" temp_file

# Move the temp file to the original file
mv temp_file "$file"

echo "Replacement done in file: $file"
