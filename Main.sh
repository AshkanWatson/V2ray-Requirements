#!/bin/bash

# Enabling the firewall
ufw enable

# Allow specific ports for incoming traffic
ufw allow 22
ufw allow 22/tcp
ufw allow 22/udp
ufw allow 443
ufw allow 443/tcp
ufw allow 443/udp
ufw allow 2060
ufw allow 2060/tcp
ufw allow 2060/udp
ufw allow 80
ufw allow 80/tcp
ufw allow 80/udp

# Allow Outgoing traffic for all
ufw default allow outgoing

# Apply changes
ufw reload

# Update package lists
apt-get update -y

# Upgrade packages to the latest version
apt-get upgrade -y

# Install the latest versions of all packages installed on the system
apt-get dist-upgrade -y

# Upgrade to the latest version of the distribution
apt-get full-upgrade -y

# Removing Old packages
apt-get autoremove -y