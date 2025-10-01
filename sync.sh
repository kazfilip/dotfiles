#!/bin/bash
set -e

cd ~/dotfiles

# Copy latest configs
cp -r ~/.config/hypr ./hypr
cp -r ~/.config/waybar ./waybar
pacman -Qqe > ./pkglist.txt

# Commit changes
git add .
git commit -m "Auto update $(date +'%Y-%m-%d %H:%M:%S')" || echo "No changes"
git push origin main

