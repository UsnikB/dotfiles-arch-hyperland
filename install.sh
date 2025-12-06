#!/bin/bash

# This script creates symbolic links from the home directory to the dotfiles in this repository.

# Backup existing files
echo "Backing up existing dotfiles..."
for file in hypr; do
    if [ -e "$HOME/.config/$file" ]; then
        mv "$HOME/.config/$file" "$HOME/.config/$file.bak"
        echo "Backed up $HOME/.config/$file to $HOME/.config/$file.bak"
    fi
done

# Create symbolic links
echo "Creating symbolic links..."
ln -s "$(pwd)/hypr" "$HOME/.config/hypr"

echo "Done."
