#!/bin/bash

# Enabling the firewall
sudo ufw enable

# Allow specific ports for incoming traffic
sudo ufw allow 22
sudo ufw allow 22/tcp
sudo ufw allow 22/udp
sudo ufw allow 443
sudo ufw allow 443/tcp
sudo ufw allow 443/udp
sudo ufw allow 2060
sudo ufw allow 2060/tcp
sudo ufw allow 2060/udp
sudo ufw allow 80
sudo ufw allow 80/tcp
sudo ufw allow 80/udp

# Allow Outgoing traffic for all
sudo ufw default allow outgoing

# Apply changes
sudo ufw reload

# Update package lists
sudo apt-get update -y

# Upgrade packages to the latest version
sudo apt-get upgrade -y

# Install the latest versions of all packages installed on the system
sudo apt-get dist-upgrade -y

# Upgrade to the latest version of the distribution
sudo apt-get full-upgrade -y

# Removing Old packages
sudo apt-get autoremove -y