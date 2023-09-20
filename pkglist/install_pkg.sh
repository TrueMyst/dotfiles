#!/bin/sh

# [Credits] elysianmyst

# Check if the script is run with root privileges
if [[ $EUID -ne 0 ]]; then
  echo "This script must be run as root (sudo)." >&2
  exit 1
fi

# Define the file containing the list of packages to install
package_list="./pkglist.txt"

# Installs paru (package manger)
pacman -S paru

# Update the package database and upgrade installed packages
echo "Updating package database and upgrading installed packages..."
paru -Syu --noconfirm

# Installs packages from
cat $(package_list) | xargs -I {} paru -S --noconfirm {}

# Cleans up
echo "Cleaning up..."
paru -Sc --noconfirm
