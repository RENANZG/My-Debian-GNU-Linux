#!/usr/bin/env bash

#######################################################################
# File Name    : install_deeplx_appimage.sh
# Description  : This script automates the installation and setup of
#                an application. It downloads the latest version from a
#                specified source using curl, installs it to the user's
#                home directory, creates necessary directories and
#                symbolic links, provides an updater script and a
#                remover script, and runs the application inside a
#                bubblewrap (bwrap) sandbox for added security.
#                WARNING: --cap-add CAP_SYS_ADMIN activated.
# Dependencies : curl, bubblewrap, tar
# Usage        : • Make the script executable with
#                  chmod +x install_deeplx_appimage.sh
#                • Run the script with:
#                  bash install_deeplx_appimage.sh
#                • To update the application, run:
#                  bash $HOME/.local/share/AppImages/deeplx/update.sh
#                • To remove the application, run:
#                  bash $HOME/.local/share/AppImages/deeplx/remove.sh
# Author       : Me and the bois
# License      : Free of charge, no warranty
# Inspired by  : https://portable-linux-apps.github.io
#######################################################################

# Safety check
set -eu

# Define variables
APP_NAME="deeplx"
APP_DOWNLOAD_URL="https://api.github.com/repos/OwO-Network/deeplx/releases"
HOME_DIR="$HOME/.local/share/AppImages/$APP_NAME"
TAR_GZ_FILE="$HOME_DIR/$APP_NAME.tar.gz"
APPIMAGE_FILE="$HOME_DIR/$APP_NAME.AppImage"
DESKTOP_ENTRY="$HOME/.local/share/applications/$APP_NAME.desktop"

# Bubblewrap options (change as needed)
get_bwrap_cmd() {
  local DISPLAY_VALUE="${DISPLAY:-:0}"
  local USER_ID=$(id -u)
  echo "bwrap \
--cap-add CAP_SYS_ADMIN \
--dev-bind /dev /dev \
--dev-bind /dev/dri /dev/dri \
--unshare-all \
--share-net \
--proc /proc \
--ro-bind /usr /usr \
--ro-bind /bin /bin \
--ro-bind /sbin /sbin \
--ro-bind /lib /lib \
--ro-bind /lib64 /lib64 \
--ro-bind /etc/ssl /etc/ssl \
--ro-bind /etc/resolv.conf /etc/resolv.conf \
--ro-bind /etc/fonts /etc/fonts \
--ro-bind /usr/share/fonts /usr/share/fonts \
--ro-bind /usr/lib/x86_64-linux-gnu/dri /usr/lib/x86_64-linux-gnu/dri \
--setenv DISPLAY $DISPLAY_VALUE \
--tmpfs /run \
--tmpfs /tmp \
--bind /etc/mtab /etc/mtab \
--bind /run/dbus/system_bus_socket /run/dbus/system_bus_socket \
--bind /run/user/$USER_ID/at-spi /run/user/$USER_ID/at-spi \
--bind /run/user/$USER_ID/bus /run/user/$USER_ID/bus \
--bind /run/user/$USER_ID/dconf /run/user/$USER_ID/dconf \
--bind /run/user/$USER_ID/pulse /run/user/$USER_ID/pulse \
--bind \"$APPIMAGE_FILE\" \"$APPIMAGE_FILE\" \
--bind \"$HOME/.cache/$APP_NAME\" \"$HOME/.cache/$APP_NAME\" \
--bind \"$HOME/.config/$APP_NAME\" \"$HOME/.config/$APP_NAME\" \
--bind \"$HOME\" \"$HOME\" \
/bin/sh -c \"$APPIMAGE_FILE\""
}

# Function to check if required dependencies are installed
check_dependencies() {
  local dependencies=("bwrap" "curl" "tar")
  for cmd in "${dependencies[@]}"; do
    if ! command -v "$cmd" > /dev/null 2>&1; then
      echo "Error: $cmd is not installed. Please install it first."
      exit 1
    fi
  done
  echo "All dependencies are installed."
}

# Function to create necessary directories
create_directories() {
  mkdir -p "$HOME_DIR" \
  "$HOME/.local/share/applications" \
  "$HOME/.cache/$APP_NAME" \
  "$HOME/.config/$APP_NAME"
}

# Function to download the latest tar.gz
download_tar_gz() {
  # Fetch all available releases from the GitHub API
  RESPONSE=$(curl -sL "$APP_DOWNLOAD_URL")

  # Extract the latest tar.gz URL using regex
  VERSION_URL=$(echo "$RESPONSE" | grep -oP '"browser_download_url": *"\K[^"]*' | grep -i 'tar.gz' | head -n 1)

  # If no URL was found, exit with error
  if [[ -z "$VERSION_URL" ]]; then
    echo "Error: No valid tar.gz URL found."
    exit 1
  fi

  echo "Downloading tar.gz from $VERSION_URL..."
  curl -L -o "$TAR_GZ_FILE" "$VERSION_URL" || { echo "Error: Download failed."; exit 1; }
}

# Function to extract tar.gz
extract_tar_gz() {
  echo "Extracting tar.gz from $TAR_GZ_FILE..."

  if [ ! -f "$TAR_GZ_FILE" ]; then
    echo "Error: tar.gz not found."
    exit 1
  fi

  # Extract tar.gz
  tar -xzf "$TAR_GZ_FILE" -C "$HOME_DIR" || { echo "Error: Extraction failed."; exit 1; }

  # Ensure the AppImage was created
  if [ ! -f "$APPIMAGE_FILE" ]; then
    echo "Error: AppImage not found after extraction."
    exit 1
  fi

  chmod +x "$APPIMAGE_FILE"
}

# Function to configure extracted files (desktop entry, icon)
configure_files() {
  local EXTRACTED_DIR="$HOME_DIR"

  # Get the bubblewrap command
  BWRAP_CMD=$(get_bwrap_cmd)

  # Search for desktop entry files in the extracted directory
  DESKTOP_ENTRY_SRC=$(find "$EXTRACTED_DIR" -name "*.desktop" -type f | head -n 1)

  # Search for icon files in the extracted directory
  ICON_FILE=$(find "$EXTRACTED_DIR" \
    \( -name "*.png" -o -name "*.svg" \) | head -n 1)

  # If no valid desktop entry is found, create a basic one
  if [ -z "$DESKTOP_ENTRY_SRC" ]; then
    echo "No valid desktop entry found, creating a basic one..."

    DESKTOP_ENTRY_SRC="$HOME_DIR/$APP_NAME.desktop"
    cat > "$DESKTOP_ENTRY_SRC" <<EOF
[Desktop Entry]
Version=1.0
Type=Application
Name=$APP_NAME
Exec=$BWRAP_CMD
Icon=$APP_NAME
Categories=Utility;
EOF
  fi

  # If no valid icon is found, use the application name as the icon name
  if [ -z "$ICON_FILE" ]; then
    echo "No valid icon found, using the application name as the icon reference..."
    ICON_PATH="$APP_NAME"  # This will let the system look for a system-wide icon with the name
  else
    # Handle PNG or SVG icons
    if [[ "$ICON_FILE" == *.png ]]; then
      cp "$ICON_FILE" "$HOME_DIR/icon/$APP_NAME.png"
      ICON_PATH="$HOME_DIR/icon/$APP_NAME.png"
    elif [[ "$ICON_FILE" == *.svg ]]; then
      if command -v rsvg-convert > /dev/null 2>&1; then
        echo "Converting SVG icon to PNG..."
        rsvg-convert -o "$HOME_DIR/icon/$APP_NAME.png" "$ICON_FILE"
        ICON_PATH="$HOME_DIR/icon/$APP_NAME.png"
      else
        echo "Warning: rsvg-convert not found, using the SVG icon."
        cp "$ICON_FILE" "$HOME_DIR/icon/$APP_NAME.svg"
        ICON_PATH="$HOME_DIR/icon/$APP_NAME.svg"
      fi
    fi
  fi

  # Escape special characters in BWRAP_CMD and ICON_PATH
  BWRAP_CMD_ESCAPED=$(printf '%s\n' "$BWRAP_CMD" | sed 's/[\/&]/\\&/g')
  ICON_PATH_ESCAPED=$(printf '%s\n' "$ICON_PATH" | sed 's/[\/&]/\\&/g')

  # Update the Exec and Icon fields in the desktop entry
  sed -i "s@^Exec=.*@Exec=$BWRAP_CMD_ESCAPED@g" "$DESKTOP_ENTRY_SRC"
  sed -i "s@^Icon=.*@Icon=$ICON_PATH_ESCAPED@g" "$DESKTOP_ENTRY_SRC"

  # Copy the desktop entry to the appropriate directories
  cp "$DESKTOP_ENTRY_SRC" "$DESKTOP_ENTRY"
  cp "$DESKTOP_ENTRY" "$HOME/Desktop"

  # Cleanup the temporary extraction directory
  rm -rf "$EXTRACTED_DIR"
}

# Function to create the remover script
create_remover_script() {
  cat > "$HOME_DIR/remove.sh" <<EOF
#!/bin/sh
set -e
rm -f "\$HOME/Desktop/$APP_NAME.desktop"
rm -f "\$HOME/.local/share/applications/$APP_NAME.desktop"
rm -rf "$HOME_DIR"
rm -rf "\$HOME/.config/$APP_NAME"
rm -rf "\$HOME/.local/share/$APP_NAME"
echo "Application removed."
EOF
  chmod a+x "$HOME_DIR/remove.sh"
}

# Function to create the updater script
create_updater_script() {
  cat > "$HOME_DIR/update.sh" <<EOF
#!/bin/sh
set -u
APP_NAME="$APP_NAME"
APP_DOWNLOAD_URL="$APP_DOWNLOAD_URL"
HOME_DIR="$HOME_DIR"
TAR_GZ_FILE="$TAR_GZ_FILE"
APPIMAGE_FILE="$APPIMAGE_FILE"
version=\$(curl -sL "\$APP_DOWNLOAD_URL" | grep -o '"browser_download_url": *"[^"]*"' | grep -o 'https://[^"]*' | grep -i 'tar.gz' | head -n 1)
if [ -n "\$version" ]; then
    mkdir -p "\$HOME_DIR/tmp" && cd "\$HOME_DIR/tmp" || exit 1
    curl -L -o "\$TAR_GZ_FILE" "\$version" || exit 1
    tar -xzf "\$TAR_GZ_FILE" -C "\$HOME_DIR"
    chmod a+x "\$APPIMAGE_FILE" || exit 1
    rm -rf "\$HOME_DIR/tmp"
    notify-send "\$APP_NAME is updated!"
else
    echo "Update not needed!"
fi
EOF
  chmod a+x "$HOME_DIR/update.sh"
}

# Main script execution
check_dependencies
create_directories
download_tar_gz
extract_tar_gz
configure_files
create_remover_script
create_updater_script

echo "Installation of $APP_NAME completed successfully."
