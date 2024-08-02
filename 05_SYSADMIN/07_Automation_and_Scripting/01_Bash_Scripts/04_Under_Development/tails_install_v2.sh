#!/usr/bin/env bash

########################################################################
# File Name    : tails_install_v2.sh
# Description  : Install Tails from Debian or Ubuntu.
# Dependencies : wget, apt, gpg, grep, coreutils, bash-builtins
# Based on     : https://tails.net/install/expert/index.en.html
# Usage        : • Make the script executable with 
#                sudo chmod +x ~/Downloads/tails_install_v2.sh
#                • Run the script with:   
#                sudo bash ~/Downloads/tails_install_v2.sh
# Author       : Me and the bois
# License      : Free of charge, no warranty
# Last edited  : 2024-07-20
########################################################################

# Variables
TAILS_BASE_URL="https://tails.net/torrents/files/"
LATEST_VERSION_URL="https://tails.net/tails/stable/"
SIGNING_KEY_URL="https://tails.net/tails-signing.key"
KEYRING_PATH="/usr/share/keyrings/debian-keyring.gpg"
KEY_ID="A490D0F4D311A4153E2BB7CADBB802B258ACD84F"
KEY_EMAIL="chris@chris-lamb.co.uk"
TEMP_HTML=$(mktemp)
USB_DEVICE=""
IMG_FILE=""
IMG_SIG_FILE=""

# Fetch the latest version of Tails
echo "Fetching the latest version information..."
wget -q -O "$TEMP_HTML" "$LATEST_VERSION_URL"

LATEST_VERSION=$(grep -oP 'tails-amd64-\K[\d.]+(?=\.img\.sig)' "$TEMP_HTML" | sort -V | tail -n 1)
if [ -z "$LATEST_VERSION" ]; then
    echo "Failed to retrieve the latest Tails version."
    rm "$TEMP_HTML"
    exit 1
fi

echo "Latest Tails version: $LATEST_VERSION"

# Construct URLs and filenames
TAILS_IMG_URL="${TAILS_BASE_URL}tails-amd64-${LATEST_VERSION}/tails-amd64-${LATEST_VERSION}.img"
TAILS_SIG_URL="${TAILS_BASE_URL}tails-amd64-${LATEST_VERSION}.img.sig"
IMG_FILE="tails-amd64-${LATEST_VERSION}.img"
IMG_SIG_FILE="tails-amd64-${LATEST_VERSION}.img.sig"

# Download and verify Tails signing key
echo "Downloading Tails signing key..."
wget -q --show-progress "$SIGNING_KEY_URL" -O tails-signing.key

echo "Importing Tails signing key..."
gpg --import tails-signing.key

# Install the Debian keyring
echo "Installing Debian keyring..."
sudo apt update -q
sudo apt install -y debian-keyring

# Import Chris Lamb's key from the Debian keyring
echo "Importing Chris Lamb's key..."
gpg --keyring="$KEYRING_PATH" --export "$KEY_EMAIL" | gpg --import

# Verify certifications on the Tails signing key
echo "Verifying certifications on the Tails signing key..."
gpg --keyid-format 0xlong --check-sigs "$KEY_ID" | grep -E "sig!2.*$KEY_EMAIL"

# Certify the Tails signing key with your own key
echo "Certifying the Tails signing key with your own key..."
gpg --lsign-key "$KEY_ID"

# Download the Tails USB image
echo "Downloading Tails USB image..."
wget -q --show-progress "$TAILS_IMG_URL" -O "$IMG_FILE"

# Download the signature of the USB image
echo "Downloading signature of the USB image..."
wget -q --show-progress "$TAILS_SIG_URL" -O "$IMG_SIG_FILE"

# Verify the downloaded image
echo "Verifying the downloaded image..."
TZ=UTC gpg --no-options --keyid-format long --verify "$IMG_SIG_FILE" "$IMG_FILE"

# List storage devices and identify USB stick
echo "Identifying USB stick..."
ls -1 /dev/sd? > /tmp/devices_before.txt
sleep 5
ls -1 /dev/sd? > /tmp/devices_after.txt
USB_DEVICE=$(diff /tmp/devices_before.txt /tmp/devices_after.txt | grep -E "^> /dev/sd." | awk '{print $2}')

if [ -z "$USB_DEVICE" ]; then
    echo "No new USB device found. Please ensure your USB stick is plugged in."
    rm "$TEMP_HTML"
    exit 1
fi

echo "Found USB device: $USB_DEVICE"

# Write the image to the USB stick
echo "Writing image to USB stick..."
sudo dd if="$IMG_FILE" of="$USB_DEVICE" bs=16M oflag=direct status=progress

echo "Tails installation complete."

# Clean up
rm tails-signing.key "$IMG_FILE" "$IMG_SIG_FILE" /tmp/devices_before.txt /tmp/devices_after.txt "$TEMP_HTML"
