#!/bin/bash

# Update package lists
sudo apt update

# Install Apache web server
sudo apt install -y apache2

# Install PHP and necessary modules
sudo apt install -y php libapache2-mod-php php-mysql php-curl php-gd php-xml php-mbstring

# Install Composer (PHP dependency manager)
EXPECTED_SIGNATURE=$(curl -s https://composer.github.io/installer.sig)
sudo php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
ACTUAL_SIGNATURE=$(php -r "echo hash_file('sha384', 'composer-setup.php');")

if [ "$EXPECTED_SIGNATURE" != "$ACTUAL_SIGNATURE" ]; then
    >&2 echo 'ERROR: Invalid installer signature'
    sudo rm composer-setup.php
    exit 1
fi

sudo php composer-setup.php --install-dir=/usr/local/bin --filename=composer
sudo rm composer-setup.php

# Install MySQL (if needed)
# sudo apt install -y mysql-server

# Enable Apache modules
sudo a2enmod rewrite
sudo systemctl restart apache2

echo "Installation completed successfully!"
