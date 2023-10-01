#!/bin/bash

# Check if the user is root (sudo)
if [ "$EUID" -ne 0 ]; then
  echo "Please run this script as root (with sudo)."
  exit 1
fi

# Update the package database and upgrade installed packages
echo "Updating package database and upgrading installed packages..."
paru -Syu --noconfirm

# Check if Paru is installed; if not, install it
if ! command -v paru &> /dev/null; then
  echo "Paru is not installed. Installing Paru..."
  git clone https://aur.archlinux.org/paru.git
  cd paru; makepkg -si --noconfirm; cd ..; sudo rm -rf paru
fi

# Specify the package list file
pkglist="pkglist.txt"

# Check if the package list file exists
if [ ! -f "$pkglist" ]; then
  echo "Package list file '$pkglist' not found."
  exit 1
fi

# Read and install packages from the list using Paru
while read -r package; do
  paru -S --noconfirm "$package"
done < "$pkglist"

echo "Packages installed successfully."

# Cleans up
echo "Cleaning up..."
paru -Sc --noconfirm
