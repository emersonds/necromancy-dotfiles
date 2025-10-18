!/usr/bin/bash
# Bash script for starting swww with rotating wallpapers
# in Hyprland. Credit to LittleSmartyFox on /r/Hyprland.
# https://www.reddit.com/r/hyprland/comments/1df3c93/tutorial_swww_how_to_setup/?utm_source=share&utm_medium=web3x&utm_name=web3xcss&utm_term=1&utm_content=share_button

# Start SWWW
WALLPAPERS_DIR=~/Wallpapers/Current
WALLPAPER=$(find "$WALLPAPERS_DIR" -type f | shuf -n 1)
swww img "$WALLPAPER"
