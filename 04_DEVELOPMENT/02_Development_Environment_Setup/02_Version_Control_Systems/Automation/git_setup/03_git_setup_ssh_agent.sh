#!/usr/bin/env bash

########################################################################
# File Name    : git_setup_ssh_agent.sh
# Description  : This script sets up Git with SSH keys for
#                authentication and configures your Git user information. 
#                It generates an `ed25519` SSH key if one does not already exist, 
#                and writes the public key to a temporary file. You can
#                manually copy this key to your GitHub account.
# Dependencies : git; ssh-keygen; ssh-agent; keychain (optional)
# Usage        : • Make the script executable with:
#                 chmod +x git_setup_ssh_agent.sh
#                • Run the script with:
#                 bash git_setup_ssh_agent.sh
# Author       : Me and the bois
# License      : Free of charge, no warranty
# Reference    : https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent
########################################################################

# Check if Git is installed
if ! command -v git &> /dev/null; then
  echo "Git is not installed. Please install Git and run the script again."
  exit 1
fi

# Check if ssh-keygen is installed
if ! command -v ssh-keygen &> /dev/null; then
  echo "ssh-keygen is not installed. Please install OpenSSH and run the script again."
  exit 1
fi

# Set Git user configuration
read -p "Enter your name for Git configuration: " GIT_NAME
read -p "Enter your email for Git configuration: " GIT_EMAIL

git config --global user.name "$GIT_NAME"
git config --global user.email "$GIT_EMAIL"

# Generate SSH key if it doesn't already exist
SSH_KEY_PATH="$HOME/.ssh/id_ed25519"
if [ ! -f "$SSH_KEY_PATH" ]; then
  echo "Generating a new SSH key..."
  # Using ed25519 for a modern, secure key
  ssh-keygen -t ed25519 -C "$GIT_EMAIL" -f "$SSH_KEY_PATH" -N ""
else
  echo "SSH key already exists at $SSH_KEY_PATH"
  echo "Listing the existing SSH key files:"
  ls -l "$SSH_KEY_PATH" "$SSH_KEY_PATH.pub"
fi

# Write SSH public key to a temporary file with restricted permissions
PUB_KEY_TEMP_FILE="/tmp/id_ed25519.pub"
cat "$SSH_KEY_PATH.pub" > "$PUB_KEY_TEMP_FILE"
chmod 600 "$PUB_KEY_TEMP_FILE"

echo "The SSH public key has been written to $PUB_KEY_TEMP_FILE."
echo "Please open this file to manually copy the SSH public key and add it to your GitHub account."
echo "To open the file, you can use a text editor or command like 'cat $PUB_KEY_TEMP_FILE'."
echo "For example: cat $PUB_KEY_TEMP_FILE"

# Add SSH key to the ssh-agent
eval "$(ssh-agent -s)"
ssh-add "$SSH_KEY_PATH"

# Optionally, use keychain for managing SSH keys across sessions
if command -v keychain &> /dev/null; then
  echo "Setting up keychain to manage your SSH keys..."
  keychain --agents ssh "$SSH_KEY_PATH"
  source "$HOME/.keychain/$HOSTNAME-sh"
else
  echo "Keychain is not installed. If you want to manage your SSH keys more conveniently, consider installing keychain."
fi

echo "Git has been configured with the following settings:"
echo "Name: $GIT_NAME"
echo "Email: $GIT_EMAIL"
echo "Path of SSH Key: $SSH_KEY_PATH"
echo "Please go to GitHub (https://github.com/settings/keys) to add your SSH key."

echo "Setup completed."
