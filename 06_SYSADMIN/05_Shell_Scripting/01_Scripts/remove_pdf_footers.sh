#!/bin/bash

########################################################################
# File Name    : 
# Description  : 
# Dependencies : 
# Usage        : • Make the script executable with 
#                sudo chmod +x 
#                • Run the script with [no] arguments:   
#                bash 
# Author       : 
# License      : 
########################################################################

# Convert PDF to PNG images
pdftoppm -png input.pdf page

# Crop the images to remove the watermark
for i in page-*.png; do
    convert "$i" -crop 3704x1852+0+20 +repage cropped-"$i"
done

# Convert cropped images back to a single PDF
convert cropped-page-*.png cropped-output.pdf

# Clean up intermediate files
rm page-*.png cropped-page-*.png
