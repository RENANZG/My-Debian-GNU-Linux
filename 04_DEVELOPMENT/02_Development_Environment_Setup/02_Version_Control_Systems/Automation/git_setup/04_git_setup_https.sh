#!/usr/bin/env bash

########################################################################
# File Name    : git_setup_https.sh
# Description  : Setup Git with HTTPS for authentication, and configure 
#                 user info. Guide users to use Personal Access Tokens
#                 (PAT) with 2FA.
# Dependencies : git
# Usage        : • Make the script executable with:
#                 chmod +x git_setup_https.sh
#                • Run the script with:
#                 bash git_setup_https.sh
# Author       : Me and the bois
# License      : Free of charge, no warranty
########################################################################

# Check if Git is installed
if ! command -v git &> /dev/null; then
  echo "Git is not installed. Please install Git and run the script again."
  exit 1
fi

# Set Git user configuration
read -p "Enter your name for Git configuration: " GIT_NAME
read -p "Enter your email for Git configuration: " GIT_EMAIL

git config --global user.name "$GIT_NAME"
git config --global user.email "$GIT_EMAIL"

# Inform the user about using Personal Access Tokens (PAT) with HTTPS
echo "You have 2FA enabled on GitHub. You will need to use a Personal Access Token (PAT) for HTTPS authentication."
echo "Generate a PAT with the necessary scopes at: https://github.com/settings/tokens"
echo "Store the PAT securely, as you will use it in place of your GitHub password for Git operations over HTTPS."

echo "Git has been configured with the following settings:"
echo "Name: $GIT_NAME"
echo "Email: $GIT_EMAIL"

echo "Setup completed."
