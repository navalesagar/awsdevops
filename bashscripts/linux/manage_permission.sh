#!/bin/bash

# Check if script is run as root
if [ "$(id -u)" -ne 0 ]; then
    echo "Please run this script as root!"
    exit 1
fi

# Read username
read -p "Enter username to grant sudo access: " username

# Check if user exists
if id "$username" &>/dev/null; then
    usermod -aG sudo "$username"
    echo "User $username now has sudo privileges."
else
    echo "User $username does not exist!"
fi

# Set file permissions (Example: Allow only the owner to read/write a file)
echo "Setting secure file permissions..."
chmod 600 /etc/shadow  # Very sensitive file (change this as needed)

echo "Permissions updated successfully!"
