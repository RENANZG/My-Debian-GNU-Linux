#!/bin/bash

########################################################################

# One-line command to output in terminal

## The double quotes within the input string can cause issues with the command
 
### For example

##### Error:
##### input="Hello . \ $ # & < > " ^ ~ ( ) { } [ ] * \ / | "; echo "${input//&/&amp;}" | sed 's/&/\&amp;/g; s/</\&lt;/g; s/>/\&gt;/g; s/"/\&quot;/g; s/'"'"'/\&apos;/g')

input_text='camel_to_title() { convert_to_title() { echo "$1" | sed -E '\''s/([a-z])([A-Z])/\1 2/g'\'' | awk '\''{ for (i = 1; i &lt;= NF; i++) { if (tolower($i) ~ /^(in|on|at|of|and|or|but|to|the|a|an)$/ \&\& i != 1) { $i = tolower($i) } else { $i = toupper(substr($i, 1, 1)) tolower(substr($i, 2)) } } print $0 }'\'' OFS=" " } for file in *; do if [[ -f "$file" ]]; then base="${file%.*}" ext="${file##*.}" new_name=$(convert_to_title "$base") if [ "$base" != "$new_name" ]; then mv -v "$file" "$new_name.${ext}" fi fi done }'

# Use heredoc to pass input_text to sed
echo "$input_text" | sed -e 's/&/\&amp;/g' -e 's/</\&lt;/g' -e 's/>/\&gt;/g' -e 's/"/\&quot;/g' -e "s/'/\&#39;/g" -e 's/\$/\&#36;/g' -e 's/\./\&#46;/g' -e 's/\\/\\\\/g' -e 's/#/\&#35;/g' -e 's/\^/\&#94;/g' -e 's/~/\&#126;/g' -e 's/\(/\\\(/g' -e 's/\)/\\\)/g' -e 's/{/\&#123;/g' -e 's/}/\&#125;/g' -e 's/\[/\&#91;/g' -e 's/\]/\&#93;/g' -e 's/\*/\&#42;/g' -e 's/\//\&#47;/g' -e 's/|/\&#124;/g'

input_text='camel_to_title() { convert_to_title() { echo "$1" | sed -E '\''s/([a-z])([A-Z])/\1 2/g'\'' | awk '\''{ for (i = 1; i &lt;= NF; i++) { if (tolower($i) ~ /^(in|on|at|of|and|or|but|to|the|a|an)$/ \&\& i != 1) { $i = tolower($i) } else { $i = toupper(substr($i, 1, 1)) tolower(substr($i, 2)) } } print $0 }'\'' OFS=" " } for file in *; do if [[ -f "$file" ]]; then base="${file%.*}" ext="${file##*.}" new_name=$(convert_to_title "$base") if [ "$base" != "$new_name" ]; then mv -v "$file" "$new_name.${ext}" fi fi done }'; echo "$input_text" | sed -e 's/&/\&amp;/g' -e 's/</\&lt;/g' -e 's/>/\&gt;/g' -e 's/"/\&quot;/g' -e "s/'/\&#39;/g" -e 's/\$/\&#36;/g' -e 's/\./\&#46;/g' -e 's/\\/\\\\/g' -e 's/#/\&#35;/g' -e 's/\^/\&#94;/g' -e 's/~/\&#126;/g' -e 's/\(/\\\(/g' -e 's/\)/\\\)/g' -e 's/{/\&#123;/g' -e 's/}/\&#125;/g' -e 's/\[/\&#91;/g' -e 's/\]/\&#93;/g' -e 's/\*/\&#42;/g' -e 's/\//\&#47;/g' -e 's/|/\&#124;/g'


input_text='. \ $ # & < > " ^ ~ ( ) { } [ ] * \ / | '; perl -MHTML::Entities -e 'binmode(STDOUT, ":utf8"); $input = $ARGV[0]; $encoded = encode_entities($input); print "$encoded\n";' "$input_text"

input_text='Text with special characters: . \ $ # & < > " ^ ~ \( \) { } [ ] * \ / |'; perl -MHTML::Entities -e 'binmode(STDOUT, ":utf8"); $input = $ARGV[0]; $encoded = encode_entities($input); print "$encoded\n";' "$input_text"


# input='Hello . \ $ # & < > " ^ ~ ( ) { } [ ] * \ / | '; sanitized=$(echo "$input" | sed 's/&/\&amp;/g; s/</\&lt;/g; s/>/\&gt;/g; s/"/\&quot;/g; s/'"'"'/\&apos;/g; s/\$/\&#36;/g; s/#/\&#35;/g; s/%/\&#37;/g; s/!\( \|$\)/\&excl;\1/g; s/\^/\&#94;/g; s/~/\&#126;/g; s/(/\\&lpar;/g; s/)/\\&rpar;/g; s/{/\\&lcub;/g; s/}/\\&rcub;/g; s/\[/\\&lsqb;/g; s/\]/\\&rsqb;/g; s/\*/\\&ast;/g; s/\\/\\&bsol;/g; s/\//\\&sol;/g; s/|/\\&vert;/g; s/\./\\&period;/g'); echo "$sanitized"

# input='Hello . \ $ # & < > " ^ ~ ( ) { } [ ] * \ / | '; sanitized=$(echo "$input" | sed 's/&/\&amp;/g; s/</\&lt;/g; s/>/\&gt;/g; s/"/\&quot;/g; s/'"'"'/\&apos;/g; s/\$/\&#36;/g; s/#/\&#35;/g; s/%/\&#37;/g; s/!\( \|$\)/\&excl;\1/g; s/\^/\&#94;/g; s/~/\&#126;/g; s/(/\\&lpar;/g; s/)/\\&rpar;/g; s/{/\\&lcub;/g; s/}/\\&rcub;/g; s/\[/\\&lsqb;/g; s/\]/\\&rsqb;/g; s/\*/\\&ast;/g; s/\\/\\&bsol;/g; s/\//\\&sol;/g; s/|/\\&vert;/g; s/\./\\&period;/g'); echo "<button onclick=\"navigator.clipboard.writeText('$sanitized')\">Copy</button>"

##### Correct:
##### input='Hello . '\''\'\'' $ #" & < > " ^ ~ ( ) { } [ ] * \ / | '; echo "${input//&/&amp;}" | sed 's/&/\&amp;/g; s/</\&lt;/g; s/>/\&gt;/g; s/"/\&quot;/g; s/'"'"'/\&apos;/g; s/\$/\&#36;/g; s/#/\&#35;/g; s/%/\&#37;/g; s/!\( \|$\)/\&excl;\1/g; s/\^/\&#94;/g; s/~/\&#126;/g; s/(/\\&lpar;/g; s/)/\\&rpar;/g; s/{/\\&lcub;/g; s/}/\\&rcub;/g; s/\[/\\&lsqb;/g; s/\]/\\&rsqb;/g; s/\*/\\&ast;/g; s/\\/\\&bsol;/g; s/\//\\&sol;/g; s/|/\\&vert;/g; s/\./\\&period;/g'); echo "<button onclick=\"navigator.clipboard.writeText('$sanitized')\">Copy</button>"

input='Hello . '\''\'\'' $ #" & < > " ^ ~ ( ) { } [ ] * \ / | '; sanitized=$(echo "$input" | sed 's/&/\&amp;/g; s/</\&lt;/g; s/>/\&gt;/g; s/"/\&quot;/g; s/'"'"'/\&apos;/g; s/\$/\&#36;/g; s/#/\&#35;/g; s/%/\&#37;/g; s/!\( \|$\)/\&excl;\1/g; s/\^/\&#94;/g; s/~/\&#126;/g; s/(/\\&lpar;/g; s/)/\\&rpar;/g; s/{/\\&lcub;/g; s/}/\\&rcub;/g; s/\[/\\&lsqb;/g; s/\]/\\&rsqb;/g; s/\*/\\&ast;/g; s/\\/\\&bsol;/g; s/\//\\&sol;/g; s/|/\\&vert;/g; s/\./\\&period;/g'); echo "<button onclick=\"navigator.clipboard.writeText('$sanitized')\">Copy</button>"

input='Hello $ # " \ . & < > ^ ~ ( ) { } [ ] * \ / |'; sanitized=$(echo "$input" | sed 's/&/\&amp;/g; s/</\&lt;/g; s/>/\&gt;/g; s/"/\&quot;/g; s/'"'"'/\&apos;/g; s/\$/\&#36;/g; s/#/\&#35;/g; s/\^/\&#94;/g; s/~/\&#126;/g; s/(/\\&lpar;/g; s/)/\\&rpar;/g; s/{/\\&lcub;/g; s/}/\\&rcub;/g; s/\[/\\&lsqb;/g; s/\]/\\&rsqb;/g; s/\*/\\&ast;/g; s/\\/\\&bsol;/g; s/\//\\&sol;/g; s/|/\\&vert;/g; s/\./\\&period;/g'); echo "<button onclick=\"navigator.clipboard.writeText('$sanitized')\">Copy</button>"

input='Hello $ # " \ . & < > ^ ~ ( ) { } [ ] * \ / |'; sanitized=$(echo "$input" | sed 's/&/\&amp;/g; s/</\&lt;/g; s/>/\&gt;/g; s/"/\&quot;/g; s/'"'"'/\&apos;/g; s/\$/\&#36;/g; s/#/\&#35;/g; s/\^/\&#94;/g; s/~/\&#126;/g; s/(/\\&lpar;/g; s/)/\\&rpar;/g; s/{/\\&lcub;/g; s/}/\\&rcub;/g; s/\[/\\&lsqb;/g; s/\]/\\&rsqb;/g; s/\*/\\&ast;/g; s/\\/\\&bsol;/g; s/\//\\&sol;/g; s/|/\\&vert;/g; s/\./\\&period;/g'); echo "<button onclick=\"navigator.clipboard.writeText('$sanitized')\">Copy</button>"


## The input variable is enclosed in single quotes to handle the double quotes and other special characters. Within the sed command, single quotes are escaped as '\'' to ensure proper interpretation by the shell.

### For example

##### input=''\'' '; echo "${input//&/&amp;}" | sed 's/</\&lt;/g; s/>/\&gt;/g; s/"/\&quot;/g; s/'\''/\&apos;/g'

########################################################################

# One-line command to output in terminal examples

# Example usage 1: input='read -s -p "Enter your sudo password:" password; echo "$password" | sudo -S su -c "/etc/init.d/iptables -L -vn"; unset password'; sanitized=$(echo "$input" | sed 's/&/\&amp;/g; s/</\&lt;/g; s/>/\&gt;/g; s/"/\&quot;/g; s/'"'"'/\&apos;/g; s/\$/\&#36;/g; s/#/\&#35;/g; s/%/\&#37;/g; s/!\( \|$\)/\&excl;\1/g; s/\^/\&#94;/g; s/~/\&#126;/g; s/(/\\&lpar;/g; s/)/\\&rpar;/g; s/{/\\&lcub;/g; s/}/\\&rcub;/g; s/\[/\\&lsqb;/g; s/\]/\\&rsqb;/g; s/\*/\\&ast;/g; s/\\/\\&bsol;/g; s/\//\\&sol;/g; s/|/\\&vert;/g; s/\./\\&period;/g'); echo "$sanitized"

# Example usage 2: input="echo 'vm.swappiness = 10' | sudo tee -a /etc/sysctl.conf"; echo "$input"; sanitized=$(echo "$input" | sed 's/&/\&amp;/g; s/</\&lt;/g; s/>/\&gt;/g; s/"/\&quot;/g; s/'"'"'/\&apos;/g; s/\$/\&#36;/g; s/#/\&#35;/g; s/%/\&#37;/g; s/!\( \|$\)/\&excl;\1/g; s/\^/\&#94;/g; s/~/\&#126;/g; s/(/\\&lpar;/g; s/)/\\&rpar;/g; s/{/\\&lcub;/g; s/}/\\&rcub;/g; s/\[/\\&lsqb;/g; s/\]/\\&rsqb;/g; s/\*/\\&ast;/g; s/\\/\\&bsol;/g; s/\//\\&sol;/g; s/|/\\&vert;/g; s/\./\\&period;/g'); echo "$sanitized"

# Example usage 3: input='exiftool -r '-filename<${Title;s/ /_/g}_-_${Author;s/ /_/g}_(${CreationDate#;DateFmt( "%Y")}).%e ' /DIR -ext pdf'; sanitized=$(echo "$input" | sed 's/&/\&amp;/g; s/</\&lt;/g; s/>/\&gt;/g; s/"/\&quot;/g; s/'"'"'/\&apos;/g; s/\$/\&#36;/g; s/#/\&#35;/g; s/%/\&#37;/g; s/!\( \|$\)/\&excl;\1/g; s/\^/\&#94;/g; s/~/\&#126;/g; s/(/\\&lpar;/g; s/)/\\&rpar;/g; s/{/\\&lcub;/g; s/}/\\&rcub;/g; s/\[/\\&lsqb;/g; s/\]/\\&rsqb;/g; s/\*/\\&ast;/g; s/\\/\\&bsol;/g; s/\//\\&sol;/g; s/|/\\&vert;/g; s/\./\\&period;/g'); echo "$sanitized"

# Example usage 4: input='camel_to_title() { convert_to_title() { echo "$1" | sed -E 's/([a-z])([A-Z])/\1 2/g' | awk '{ for (i = 1; i &lt;= NF; i++) { if (tolower($i) ~ /^(in|on|at|of|and|or|but|to|the|a|an)$/ && i != 1) { $i = tolower($i) } else { $i = toupper(substr($i, 1, 1)) tolower(substr($i, 2)) } } print $0 }' OFS=" " } for file in *; do if [[ -f "$file" ]]; then base="${file%.*}" ext="${file##*.}" new_name=$(convert_to_title "$base") if [ "$base" != "$new_name" ]; then mv -v "$file" "$new_name.${ext}" fi fi done }' | sed 's/&/\&amp;/g; s/</\&lt;/g; s/>/\&gt;/g; s/"/\&quot;/g; s/'"'"'/\&apos;/g; s/\$/\&#36;/g; s/#/\&#35;/g; s/\^/\&#94;/g; s/~/\&#126;/g; s/(/\\&lpar;/g; s/)/\\&rpar;/g; s/{/\\&lcub;/g; s/}/\\&rcub;/g; s/\[/\\&lsqb;/g; s/\]/\\&rsqb;/g; s/\*/\\&ast;/g; s/\\/\\&bsol;/g; s/\//\\&sol;/g; s/|/\\&vert;/g; s/\./\\&period;/g'); echo "<button onclick=\"navigator.clipboard.writeText('$sanitized')\">Copy</button>"

input='camel_to_title() { convert_to_title() { echo "$1" | sed -E '\''s/([a-z])([A-Z])/\1 \2/g'\'' | awk '\''{ for (i = 1; i <= NF; i++) { if (tolower($i) ~ /^(in|on|at|of|and|or|but|to|the|a|an)$/ && i != 1) { $i = tolower($i) } else { $i = toupper(substr($i, 1, 1)) tolower(substr($i, 2)) } } print $0 }'\'' OFS=" " } for file in *; do if [[ -f "$file" ]]; then base="${file%.*}" ext="${file##*.}" new_name=$(convert_to_title "$base") if [ "$base" != "$new_name" ]; then mv -v "$file" "$new_name.${ext}" fi fi done }'; sanitized=$(echo "$input" | sed 's/&/\&amp;/g; s/</\&lt;/g; s/>/\&gt;/g; s/"/\&quot;/g; s/'"'"'/\&apos;/g; s/\$/\&#36;/g; s/#/\&#35;/g; s/\^/\&#94;/g; s/~/\&#126;/g; s/(/\\&lpar;/g; s/)/\\&rpar;/g; s/{/\\&lcub;/g; s/}/\\&rcub;/g; s/\[/\\&lsqb;/g; s/\]/\\&rsqb;/g; s/\*/\\&ast;/g; s/\\/\\&bsol;/g; s/\//\\&sol;/g; s/|/\\&vert;/g; s/\./\\&period;/g'); echo "<button onclick=\"navigator.clipboard.writeText('$sanitized')\">Copy</button>"


# Example usage 5: input="find . -name '*.pdf' -exec sh -c ' for pdf; do output="${pdf%.pdf}-processed.pdf" gs -dNOPAUSE -dBATCH -dSAFER \ -sDEVICE=pdfwrite \ -dCompatibilityLevel=1.4 -dPDFSETTINGS=/screen \ -dEmbedAllFonts=true \ -dSubsetFonts=true \ -dColorImageDownsampleType=/Bicubic -dColorImageResolution=144 \ -dGrayImageDownsampleType=/Bicubic \ -dGrayImageResolution=144 -dMonoImageDownsampleType=/Bicubic \ -dMonoImageResolution=144 \ -sOutputFile="$output" "$pdf" done ' sh {} +"; sanitized=$(echo "$input" | sed 's/&/\&amp;/g; s/</\&lt;/g; s/>/\&gt;/g; s/"/\&quot;/g; s/'"'"'/\&apos;/g; s/\$/\&#36;/g; s/#/\&#35;/g; s/%/\&#37;/g; s/!\( \|$\)/\&excl;\1/g; s/\^/\&#94;/g; s/~/\&#126;/g; s/(/\\&lpar;/g; s/)/\\&rpar;/g; s/{/\\&lcub;/g; s/}/\\&rcub;/g; s/\[/\\&lsqb;/g; s/\]/\\&rsqb;/g; s/\*/\\&ast;/g; s/\\/\\&bsol;/g; s/\//\\&sol;/g; s/|/\\&vert;/g; s/\./\\&period;/g'); echo "$sanitized"

sanitize_html() {
    local input_string="$1"
    local sanitized_string=""

    sanitized_string="${input_string//&/&amp;}"       # Replace '&' with '&amp;'
    sanitized_string="${sanitized_string//</&lt;}"   # Replace '<' with '&lt;'
    sanitized_string="${sanitized_string//>/&gt;}"   # Replace '>' with '&gt;'
    sanitized_string="${sanitized_string//\"/&quot;}"  # Replace '"' with '&quot;'
    sanitized_string="${sanitized_string//\'/&apos;}"  # Replace "'" with '&apos;'
    sanitized_string="${sananitize_html ized_string//^/&#94;}"   # Replace '^' with '&#94;'
    sanitized_string="${sanitized_string//~/&#126;}"  # Replace '~' with '&#126;'
    sanitized_string="${sanitized_string//(/&#40;}"   # Replace '(' with '&#40;'
    sanitized_string="${sanitized_string//)/&#41;}"   # Replace ')' with '&#41;'
    sanitized_string="${sanitized_string//\{/&#123;}"  # Replace '{' with '&#123;'
    sanitized_string="${sanitized_string//\}/&#125;}"  # Replace '}' with '&#125;'
    sanitized_string="${sanitized_string//[/&#91;}"   # Replace '[' with '&#91;'
    sanitized_string="${sanitized_string//]/&#93;}"   # Replace ']' with '&#93;'
    sanitized_string="${sanitized_string//\*/&#42;}"  # Replace '*' with '&#42;'
    sanitized_string="${sanitized_string//\\/&#92;}"  # Replace '\' with '&#92;'
    sanitized_string="${sanitized_string//\//&#47;}"  # Replace '/' with '&#47;'
    sanitized_string="${sanitized_string//|/&#124;}"  # Replace '|' with '&#124;'
    sanitized_string="${sanitized_string//./&#46;}"   # Replace '.' with '&#46;'
    sanitized_string="${sanitized_string//%/&#37;}"   # Replace '%' with '&#37;'
    sanitized_string="${sanitized_string//!/&#33;}"   # Replace '!' with '&#33;'
    sanitized_string="${sanitized_string//,/&#44;}"   # Replace ',' with '&#44;'
    sanitized_string="${sanitized_string//\`/&#96;}"  # Replace '`' with '&#96;'
    sanitized_string="${sanitized_string//‘/&#8216;}"  # Replace '‘' with '&#8216;'
    sanitized_string="${sanitized_string//’/&#8217;}"  # Replace '’' with '&#8217;'
    sanitized_string="${sanitized_string//“/&#8220;}"  # Replace '“' with '&#8220;'
    sanitized_string="${sanitized_string//”/&#8221;}"  # Replace '”' with '&#8221;'
    sanitized_string="${sanitized_string//¬/&#172;}"   # Replace '¬' with '&#172;'
    sanitized_string="${sanitized_string//=/&#61;}"    # Replace '=' with '&#61;'
    sanitized_string="${sanitized_string//←/&#8592;}"  # Replace '←' with '&#8592;'
    sanitized_string="${sanitized_string//↑/&#8593;}"  # Replace '↑' with '&#8593;'
    sanitized_string="${sanitized_string//→/&#8594;}"  # Replace '→' with '&#8594;'
    sanitized_string="${sanitized_string//↓/&#8595;}"  # Replace '↓' with '&#8595;'
    sanitized_string="${sanitized_string//↔/&#8596;}"  # Replace '↔' with '&#8596;'
    sanitized_string="${sanitized_string//↵/&#8629;}"  # Replace '↵' with '&#8629;'
    sanitized_string="${sanitized_string//™/&#8482;}"  # Replace '™' with '&#8482;'
    sanitized_string="${sanitized_string//®/&#174;}"   # Replace '®' with '&#174;'
    sanitized_string="${sanitized_string//©/&#169;}"   # Replace '©' with '&#169;'
    sanitized_string="${sanitized_string//¶/&#182;}"   # Replace '¶' with '&#182;'
    sanitized_string="${sanitized_string//♥/&#9829;}"  # Replace '♥' with '&#9829;'

    echo "$sanitized_string"
}

# Example usage:
input='echo "Hello . '\''\'\'' $ #" & < > " ^ ~ ( ) { } [ ] * \ / | '

echo "Original input:"
echo "$input"

sanitized_input="$(sanitize_html "$input")"
echo "Sanitized output:"
echo "$sanitized_input"
