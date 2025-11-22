#!/usr/bin/env bash
GREEN='\033[0;32m'
NOCOLOR='\033[0m'
PACKAGES=7
COUNT=1

echo -e "${GREEN}==>${NOCOLOR} Updating waybar config... ($COUNT/$PACKAGES)"
cp -r ~/.config/waybar/ ~/necromancy-dotfiles/config/
((COUNT++))

echo -e "${GREEN}==>${NOCOLOR} Updating zsh config...($COUNT/$PACKAGES)"
cp ~/.zshrc ~/necromancy-dotfiles/config/
((COUNT++))

echo -e "${GREEN}==>${NOCOLOR} Updating fastfetch config...($COUNT/$PACKAGES)"
cp ~/.config/fastfetch/config.jsonc ~/necromancy-dotfiles/config/fastfetch
((COUNT++))

echo -e "${GREEN}==>${NOCOLOR} Updating hyprland config...($COUNT/$PACKAGES)"
cp -r ~/.config/hypr ~/necromancy-dotfiles/config/
((COUNT++))

echo -e "${GREEN}==>${NOCOLOR} Updating kitty config...($COUNT/$PACKAGES)"
cp -r ~/.config/kitty ~/necromancy-dotfiles/config/
((COUNT++))

echo -e "${GREEN}==>${NOCOLOR} Updating swww config...($COUNT/$PACKAGES)"
cp ~/.config/swww/swww.sh ~/necromancy-dotfiles/config/swww
((COUNT++))

echo -e "${GREEN}==>${NOCOLOR} Updating systemd config...($COUNT/$PACKAGES)"
cp -rv ~/.config/systemd/ ~/necromancy-dotfiles/config/
