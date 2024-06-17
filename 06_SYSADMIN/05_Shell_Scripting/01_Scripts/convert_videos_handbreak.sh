#!/bin/bash

########################################################################
# File Name   : convert_videos.sh
# Description : This script converts video files in a specified source 
#               folder to MP4 format with a specified resolution and 
#               saves them in a destination folder.
# Usage       : • Make the script executable with 
#               chmod +x convert_videos.sh
#               • Run the script with arguments: 
#               bash convert_videos.sh <source_folder>
#               <destination_folder> <resolution>
#               • Resolution examples:
#               240p (SD): 426x240
#               360p (SD): 640x360
#               480p (SD): 854x480
#               720p (HD): 1280x720
#               1080p (HD): 1920x1080
#               1440p (2k): 2560x1440
#               2160p (4K): 3840x2160
#               4320p (8k): 7680x4320
# Author      : Me and the bois
# License     : Free of charge
########################################################################

# Check if at least three arguments are provided
if [ $# -lt 3 ]; then
    echo "Usage: $0 <source_folder> <destination_folder> <resolution>"
    read -p "Press enter to continue"
    exit 1
fi

SOURCE_FOLDER="$1"
DESTINATION_FOLDER="$2"
RESOLUTION="$3"
DESTINATION_EXT="mp4"
HANDBRAKE_CLI="HandBrakeCLI"

# Check if HandBrakeCLI is installed
if ! command -v "$HANDBRAKE_CLI" &> /dev/null; then
    echo "Error: HandBrakeCLI is not installed or not found in PATH."
    exit 1
fi

# Check if source folder exists
if [ ! -d "$SOURCE_FOLDER" ]; then
    echo "Error: Source folder '$SOURCE_FOLDER' not found."
    exit 1
fi

# Create destination folder if it doesn't exist
mkdir -p "$DESTINATION_FOLDER"

# Iterate over each file in the source folder
for FILEPATH in "$SOURCE_FOLDER"/*
do
    if [ -f "$FILEPATH" ]; then
        FILENAME=$(basename "$FILEPATH")
        FILENAME_NOEXT="${FILENAME%.*}"
        OUTPUT_FILE="$DESTINATION_FOLDER/$FILENAME_NOEXT.$DESTINATION_EXT"
        
        # Convert video using HandBrakeCLI with specified resolution
        "$HANDBRAKE_CLI" -i "$FILEPATH" -o "$OUTPUT_FILE" -e x264 -q 22 -r 12 -B 64 -w "${RESOLUTION%x*}" -l "${RESOLUTION#*x}"
        if [ $? -eq 0 ]; then
            echo "Successfully converted: $FILENAME"
        else
            echo "Error converting: $FILENAME"
        fi
    fi
done

echo "Conversion completed."
