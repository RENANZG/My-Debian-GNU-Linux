#!/bin/bash

sanitize_html() {
    local input="$1"
    local sanitized=""

    # Use printf to escape special characters in the input text
    sanitized=$(printf '%s' "$input" | awk '{ gsub(/&/, "\&amp;"); \
                                              gsub(/</, "\&lt;"); \
                                              gsub(/>/, "\&gt;"); \
                                              gsub(/"/, "\&quot;"); \
                                              gsub(/'\''/, "\&#39;"); \
                                              gsub(/\$/, "\&#36;"); \
                                              gsub(/\./, "\&#46;"); \
                                              gsub(/#/, "\&#35;"); \
                                              gsub(/\^/, "\&#94;"); \
                                              gsub(/~/, "\&#126;"); \
                                              gsub(/\(/, "\\\("); \
                                              gsub(/\)/, "\\\)"); \
                                              gsub(/{/, "\&#123;"); \
                                              gsub(/}/, "\&#125;"); \
                                              gsub(/\[/, "\&#91;"); \
                                              gsub(/\]/, "\&#93;"); \
                                              gsub(/\*/, "\&#42;"); \
                                              gsub(/\//, "\&#47;"); \
                                              gsub(/\|/, "\&#124;"); \
                                              print }')

    echo "$sanitized"
}

# Example usage
input_text='Text with special characters: . \ $ # & < > " ^ ~ ( ) { } [ ] * \ / |'
sanitized_text=$(sanitize_html "$input_text")
echo "$sanitized_text"
