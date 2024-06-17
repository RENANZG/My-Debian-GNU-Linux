#!/bin/bash

########################################################################
# File Name   : configure_client_ssh.sh
# Description : Use on the client side with a Debian system to access the 
#              	server using Secure Shell (SSH).
# Usage       : • Replace Placeholders with your-username, your-server-ip 
#               and your server SSH port if its different from the 
#               default port 22.
#               • Make the script executable with 
#                 chmod +x configure_client_ssh.sh
#               • Run the script with no arguments:   
#                 sudo bash configure_client_ssh.sh
# Author      : Me and the bois
# License     : Free of charge, no warranty
########################################################################

# Function to check if SSH key exists
check_ssh_key() {
    if [ ! -f ~/.ssh/id_rsa ]; then
        echo "SSH key not found."
        read -p "Do you want to generate an SSH key pair now? (yes/no): " generate_key
        if [ "$generate_key" == "yes" ]; then
            generate_ssh_key
        else
            echo "Please generate an SSH key pair using the 'ssh-keygen' command and run this script again."
            exit 1
        fi
    else
        echo "SSH key found."
    fi
}

# Function to generate SSH key
generate_ssh_key() {
    if [ -f ~/.ssh/id_rsa ]; then
        echo "SSH key already exists. Not overwriting."
    else
        echo "Generating SSH key pair..."
        ssh-keygen -t rsa -b 4096 -C "your_email@example.com" -f ~/.ssh/id_rsa
        echo "SSH key pair generated."
    fi
}

# Check if SSH key exists and prompt to generate if not
check_ssh_key

# Server SSH details
server_username="your-username"  # Replace with your server username
server_ip="your-server-ip"  # Replace with your server IP address
server_ssh_port="2222"  # Replace with your server's SSH port if different

# SSH into the server
echo "Connecting to the server..."
ssh -p "$server_ssh_port" "$server_username@$server_ip"

echo "Connection closed."
