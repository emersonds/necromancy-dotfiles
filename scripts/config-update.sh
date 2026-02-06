#!/usr/bin/env bash
GREEN='\033[0;32m'
NOCOLOR='\033[0m'
PACKAGES=11
COUNT=1

echo -e "${GREEN}==>${NOCOLOR} Updating waybar config... ($COUNT/$PACKAGES)"
cp -a ~/.config/waybar/. ~/necromancy-dotfiles/config/waybar
((COUNT++))

echo -e "${GREEN}==>${NOCOLOR} Updating zsh config...($COUNT/$PACKAGES)"
cp ~/.zshrc ~/necromancy-dotfiles/config/
((COUNT++))

echo -e "${GREEN}==>${NOCOLOR} Updating fastfetch config...($COUNT/$PACKAGES)"
cp ~/.config/fastfetch/config.jsonc ~/necromancy-dotfiles/config/fastfetch
((COUNT++))

echo -e "${GREEN}==>${NOCOLOR} Updating hyprland config...($COUNT/$PACKAGES)"
cp -a ~/.config/hypr/. ~/necromancy-dotfiles/config/hypr
((COUNT++))

echo -e "${GREEN}==>${NOCOLOR} Updating kitty config...($COUNT/$PACKAGES)"
cp -a ~/.config/kitty/. ~/necromancy-dotfiles/config/kitty/
((COUNT++))

echo -e "${GREEN}==>${NOCOLOR} Updating nvim config...($COUNT/$PACKAGES)"
cp -a ~/.config/nvim/. ~/necromancy-dotfiles/config/nvim/

echo -e "${GREEN}==>${NOCOLOR} Updating swww config...($COUNT/$PACKAGES)"
cp ~/.config/swww/swww.sh ~/necromancy-dotfiles/config/swww
((COUNT++))

echo -e "${GREEN}==>${NOCOLOR} Updating systemd config...($COUNT/$PACKAGES)"
cp -a ~/.config/systemd/. ~/necromancy-dotfiles/config/systemd
((COUNT++))

echo -e "${GREEN}==>${NOCOLOR} Updating walker config...($COUNT/$PACKAGES)"
cp -a ~/.config/walker/. ~/necromancy-dotfiles/config/walker/
((COUNT++))

echo -e "${GREEN}==>${NOCOLOR} Updating elephant config...($COUNT/$PACKAGES)"
cp -a ~/.config/elephant/. ~/necromancy-dotfiles/config/elephant/
((COUNT++))

echo -e "${GREEN}==>${NOCOLOR} Updating eww config...($COUNT/$PACKAGES)"
cp -a ~/.config/eww/. ~/necromancy-dotfiles/config/eww/
((COUNT++))

echo -e "${GREEN}==>${NOCOLOR} Updating swaync config...($COUNT/$PACKAGES)"
cp -a ~/.config/swaync/. ~/necromancy-dotfiles/config/swaync/

echo -e "${GREEN}==== Config Update Success! ===="

echo -e "${GREEN}==>${NOCOLOR} Updating sddm..."
# Sudo is required here because these are system-level folders
sudo cp -a /usr/share/sddm/themes/necromancy/. ~/necromancy-dotfiles/config/sddm/themes/necromancy/
sudo cp /etc/sddm.conf.d/necromancy.conf ~/necromancy-dotfiles/config/sddm
