#!/bin/bash

/************************************************************************
* File Name   : convert_videos_ffmpeg.sh
* Description : This script converts video files in a specified source 
*               folder to MP4 format with a specified resolution using 
*               ffmpeg and saves them in a specified destination folder.
* Usage       : Make the script executable with 
*               chmod +x convert_videos_ffmpeg.sh
*               Run the script with arguments: 
*               bash convert_videos_ffmpeg.sh <source_folder> 
*               <destination_folder> <resolution>
* Author      : Me and the bois
* License     : Free of charge
************************************************************************/

RESOLUTION="$3"
SOURCE_FOLDER="$1"
DESTINATION_FOLDER="$2"
DESTINATION_EXT="mp4"
OUTPUT_FOLDER="converted_videos"

# Check if ffmpeg is installed
if ! command -v ffmpeg &> /dev/null; then
    echo "Error: ffmpeg is not installed or not found in PATH."
    exit 1
fi

# Check if source folder exists
if [ ! -d "$SOURCE_FOLDER" ]; then
    echo "Error: Source folder '$SOURCE_FOLDER' not found."
    exit 1
fi

# Create output folder if it doesn't exist
mkdir -p "$DESTINATION_FOLDER/$OUTPUT_FOLDER"

# Iterate over each MP4 file in the source folder
for FILE in "$SOURCE_FOLDER"/*.mp4; do
    if [ -f "$FILE" ]; then
        FILENAME=$(basename -- "$FILE")
        FILENAME_NOEXT="${FILENAME%.*}"
        OUTPUT_FILE="$DESTINATION_FOLDER/$OUTPUT_FOLDER/Output_${FILENAME_NOEXT}.${DESTINATION_EXT}"

        # Convert video using ffmpeg with specified resolution
        ffmpeg -i "$FILE" -vf "scale=${RESOLUTION}" "$OUTPUT_FILE"
        if [ $? -eq 0 ]; then
            echo "Successfully converted: $FILENAME"
        else
            echo "Error converting: $FILENAME"
        fi
    fi
done

echo "Conversion completed."
