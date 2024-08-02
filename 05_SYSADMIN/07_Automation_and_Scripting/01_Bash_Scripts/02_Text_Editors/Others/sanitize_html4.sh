#!/bin/bash

sanitize_html() {
    local input="$1"
    local sanitized=""

    # Replace special characters with their HTML entities
    sanitized=$(echo "$input" | sed -e 's/&/\&amp;/g' \
                                     -e 's/</\&lt;/g' \
                                     -e 's/>/\&gt;/g' \
                                     -e 's/"/\&quot;/g' \
                                     -e "s/'/\&#39;/g")

    echo "$sanitized"
}

# Example usage
input_text='camel_to_title() { convert_to_title() { echo "$1" | sed -E '\''s/([a-z])([A-Z])/\1 2/g'\'' | awk '\''{ for (i = 1; i &lt;= NF; i++) { if (tolower($i) ~ /^(in|on|at|of|and|or|but|to|the|a|an)$/ \&\& i != 1) { $i = tolower($i) } else { $i = toupper(substr($i, 1, 1)) tolower(substr($i, 2)) } } print $0 }'\'' OFS=" " } for file in *; do if [[ -f "$file" ]]; then base="${file%.*}" ext="${file##*.}" new_name=$(convert_to_title "$base") if [ "$base" != "$new_name" ]; then mv -v "$file" "$new_name.${ext}" fi fi done }'

sanitized_text=$(sanitize_html "$input_text")
echo "$sanitized_text"
