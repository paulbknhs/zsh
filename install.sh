#!/bin/bash

# Ensure the script is run with superuser privileges
if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root" 
   exit 1
fi

# Detect the distribution
if [ -f /etc/os-release ]; then
    . /etc/os-release
    DISTRO=$ID
else
    echo "Cannot detect the Linux distribution."
    exit 1
fi

# Function to install zsh
install_zsh() {
    case "$DISTRO" in
        ubuntu|debian)
            apt update
            apt install -y zsh
            ;;
        fedora)
            dnf install -y zsh
            ;;
        centos|rhel)
            yum install -y zsh
            ;;
        arch)
            pacman -Syu --noconfirm zsh
            ;;
        *)
            echo "Unsupported distribution: $DISTRO"
            exit 1
            ;;
    esac
}

# Function to configure zsh as the default shell
configure_zsh() {
    user=$(logname) # Get the current user
    chsh -s $(which zsh) $user
}

# Install zsh
echo "Installing zsh on your system..."
install_zsh

# Verify installation
if command -v zsh >/dev/null 2>&1; then
    echo "zsh successfully installed!"
    # Prompt user to set zsh as default shell
    read -p "Do you want to set zsh as your default shell? (y/n): " response
    if [[ "$response" =~ ^[Yy]$ ]]; then
        configure_zsh
        echo "zsh has been set as the default shell. Please log out and log back in for the changes to take effect."
    else
        echo "zsh installation completed without changing the default shell."
    fi
else
    echo "Failed to install zsh."
    exit 1
fi