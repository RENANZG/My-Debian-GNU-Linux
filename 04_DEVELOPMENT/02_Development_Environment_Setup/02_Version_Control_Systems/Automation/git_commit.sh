#!/bin/bash

# Set the commit message template file
TEMPLATE_FILE="/path/to/.gitmessage"

# Check if the template file exists
if [ ! -f "$TEMPLATE_FILE" ]; then
    echo "Template file not found!"
    exit 1
fi

# Set the commit template in Git configuration
git config --local commit.template "$TEMPLATE_FILE"
