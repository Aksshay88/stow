#!/bin/bash

# Make sure the script is run with root privileges if installing for other users
if [ "$(id -u)" != "0" ]; then
    echo "This script must be run as root (or with sudo)." 1>&2
    exit 1
fi

# User to configure
TARGET_USER=${1:-$(whoami)}  # Default to the current user if no argument is passed

# Define the dotfiles repository and the directory for dotfiles
DOTFILES_REPO="https://github.com/your-username/dotfiles.git"
DOTFILES_DIR="/home/$TARGET_USER/dotfiles"

# Clone the dotfiles repository if it doesn't exist
if [ ! -d "$DOTFILES_DIR" ]; then
    echo "Cloning dotfiles repository..."
    sudo -u $TARGET_USER git clone "$DOTFILES_REPO" "$DOTFILES_DIR"
else
    echo "Dotfiles repository already exists. Pulling latest changes..."
    sudo -u $TARGET_USER git -C "$DOTFILES_DIR" pull
fi

# Change to the dotfiles directory
cd "$DOTFILES_DIR" || exit

# Install required configurations using stow
echo "Stowing configurations for user $TARGET_USER..."
for CONFIG in $(ls -d */); do
    # Ensure that each configuration directory has a corresponding directory for the target user
    if [ ! -d "/home/$TARGET_USER/.config/$CONFIG" ] && [ ! -f "/home/$TARGET_USER/.$CONFIG" ]; then
        echo "Stowing $CONFIG..."
        sudo -u $TARGET_USER stow "$CONFIG" || { echo "Failed to stow $CONFIG"; exit 1; }
    fi
done

# Set up the environment for the user
echo "Setting up environment for $TARGET_USER..."
sudo -u $TARGET_USER mkdir -p /home/$TARGET_USER/.local/bin

# Customize as needed for specific setups
echo "Dotfiles installation complete for $TARGET_USER."

