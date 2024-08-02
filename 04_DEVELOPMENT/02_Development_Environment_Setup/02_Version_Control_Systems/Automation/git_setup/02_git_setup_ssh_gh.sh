#!/usr/bin/env bash

########################################################################
# File Name    : git_setup_gh.sh
# Description  : This script sets up Git with GitHub CLI (gh) for HTTPS 
#                authentication and configures your Git user information. 
#                It guides the user through the process of logging in with 
#                their GitHub account using GitHub CLI.
# Dependencies : git; gh (GitHub CLI)
# Usage        : • Make the script executable with:
#                 chmod +x git_setup_gh.sh
#                • Run the script with:
#                 bash git_setup_gh.sh
# Author       : Me and the bois
# License      : Free of charge, no warranty
########################################################################

# Check if Git is installed
if ! command -v git &> /dev/null; then
  echo "Git is not installed. Please install Git and run the script again."
  exit 1
fi

# Check if GitHub CLI (gh) is installed
if ! command -v gh &> /dev/null; then
  echo "GitHub CLI (gh) is not installed. Installing GitHub CLI..."
  # Download and install GitHub CLI
  curl -fsSL https://cli.github.com/packages/githubcli-archive-keyring.gpg | sudo dd of=/usr/share/keyrings/githubcli-archive-keyring.gpg
  sudo chmod go+r /usr/share/keyrings/githubcli-archive-keyring.gpg
  echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | sudo tee /etc/apt/sources.list.d/github-cli.list > /dev/null
  sudo apt update
  sudo apt install -y gh
  if [ $? -ne 0 ]; then
    echo "Failed to install GitHub CLI (gh). Please install it manually and rerun the script."
    exit 1
  fi
fi

# Set Git user configuration
read -p "Enter your name for Git configuration: " GIT_NAME
read -p "Enter your email for Git configuration: " GIT_EMAIL

git config --global user.name "$GIT_NAME"
git config --global user.email "$GIT_EMAIL"

echo "Git has been configured with the following settings:"
echo "Name: $GIT_NAME"
echo "Email: $GIT_EMAIL"

# Authenticate with GitHub CLI (gh)
echo "Now you need to authenticate with GitHub CLI (gh). This will open a web browser for you to log in."
gh auth login

echo "GitHub CLI (gh) has been configured. You can now use Git and GitHub CLI for your GitHub repositories."

echo "Setup completed."
