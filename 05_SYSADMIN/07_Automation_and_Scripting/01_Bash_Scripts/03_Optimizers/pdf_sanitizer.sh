#!/usr/bin/env bash

########################################################################
# File Name    : pdf_sanitizer.sh
# Description  : Sanitizes PDF files to remove potentially harmful  
#                content. It is not suited to advanced threats. 
# Dependencies : qpdf, pdftk, gs (Ghostscript)
# Usage        : • Make the script executable with:
#                  sudo chmod +x pdf_sanitizer.sh
#                • Run the script with a PDF file as an argument:
#                  [sudo] bash pdf_sanitizer.sh input.pdf
# Author       : Me and the bois
# License      : Free of charge, no warranty
# Notes        : - qpdf --sanitize: Removes JavaScript and embedded 
#                  files, focusing on making the file safe for sharing.
#                - pdftk: Flattens the PDF to optimize compatibility.
#                - Ghostscript (gs): Recreates the PDF for final output.
#                - Ensure qpdf, pdftk, and Ghostscript are installed.
########################################################################

# Advisory to users
echo "************************************************************"
echo "WARNING: This script attempts to sanitize PDF files by"
echo "removing potentially harmful content. However, it may not"
echo "detect or mitigate all security threats. Use it cautiously"
echo "and verify the results thoroughly for sensitive documents."
echo "************************************************************"
echo ""

# Check if input file is provided
if [ $# -eq 0 ]; then
    echo "Usage: $0 input.pdf"
    exit 1
fi

input_pdf=$1
temp_pdf1="temp_cleaned1.pdf"
temp_pdf2="temp_cleaned2.pdf"
output_pdf="sanitized_${input_pdf}"

echo "Input PDF: $input_pdf"

# Step 1: Sanitize with qpdf
echo "Step 1: Sanitizing PDF with qpdf..."
qpdf --sanitize "$input_pdf" "$temp_pdf1"
echo "Step 1 completed."

# Step 2: Flatten with pdftk
echo "Step 2: Flattening PDF with pdftk..."
pdftk "$temp_pdf1" output "$temp_pdf2"
echo "Step 2 completed."

# Step 3: Recreate with Ghostscript
echo "Step 3: Recreating PDF with Ghostscript..."
gs -dSAFER -dBATCH -dNOPAUSE -dNOCACHE -sDEVICE=pdfwrite -sOutputFile="$output_pdf" -f "$temp_pdf2"
echo "Step 3 completed."

# Remove temporary files
echo "Cleaning up temporary files..."
rm "$temp_pdf1" "$temp_pdf2"
echo "Temporary files cleaned up."

echo "PDF sanitized. Output saved as $output_pdf"
