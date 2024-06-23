# Check if a file path is provided as an argument
if [ $# -ne 1 ]; then
  echo "Usage: $0 <file>"
  exit 1
fi

file="$1"

# Use sed to perform the replacement
sed -iE 's|<li><code><span>\([^<]*\) </span>\([^<]*\)</code></li>|<li><pre><code><span>\1 </span>\2</code></pre><button onclick="navigator.clipboard.writeText('\''\2'\'')">Copy</button></li>|g' "$file"

echo "Replacement done in file: $file"
