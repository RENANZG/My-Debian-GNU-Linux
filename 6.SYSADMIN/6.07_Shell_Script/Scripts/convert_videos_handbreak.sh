#!/bin/bash

/************************************************************************
* File Name   : convert_videos.sh
* Description : This script converts video files in a specified source 
*               folder to MP4 format with a specified resolution and 
*               saves them in a destination folder.
* Usage       : Make the script executable with 
*               chmod +x convert_videos.sh
*               Run the script with arguments: 
*               bash convert_videos.sh <source_folder>
*               <destination_folder> <resolution>
* Author      : Me and the bois
* License     : Free of charge
************************************************************************/

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
