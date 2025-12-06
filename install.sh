#!/bin/bash

# This script copies the dotfiles from this repository to the home directory.

# Backup existing files
echo "Backing up existing dotfiles..."
for file in hypr; do
    if [ -d "$HOME/.config/$file" ]; then
        mv "$HOME/.config/$file" "$HOME/.config/$file.bak"
        echo "Backed up $HOME/.config/$file to $HOME/.config/$file.bak"
    fi
done

# Copy the dotfiles
echo "Copying dotfiles..."
cp -r "$(pwd)/hypr" "$HOME/.config/"

echo "Done."