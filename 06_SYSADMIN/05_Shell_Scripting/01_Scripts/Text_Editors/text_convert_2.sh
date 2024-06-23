#!/bin/bash

# Check if a file path is provided as an argument
if [ $# -ne 1 ]; then
  echo "Usage: $0 <file>"
  exit 1
fi

file="$1"

# Use sed to perform the replacement
sed -iE "s|<button onclick=\"navigator.clipboard.writeText('\([^']*\)')\">Copy</button><button onclick=\"navigator.clipboard.writeText('\1')\">Copy</button>|<button onclick=\"navigator.clipboard.writeText('\1')\">Copy</button>|g" "$file"

echo "Replacement done in file: $file"
