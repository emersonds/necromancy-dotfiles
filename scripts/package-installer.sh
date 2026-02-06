#!/usr/bin/env bash

printf "Thank you for choosing Dylan's Necromancy Dotfiles!\n"
printf "This script assumes you have git installed, but will install all other packages and create their config folders. Config folders will be created at $HOME/.config.\n"

printf "Installing yay package manager...\n"
cd $HOME
DIRECTORY="$HOME/yay"
CONFIG_DIR="$HOME/.config"

if [ -d "$DIRECTORY" ]; then
  printf  "yay already installed, proceeding...\n"
else
	git clone https://aur.archlinux.org/yay.git
	cd yay
	makepkg -si
fi

printf "Installing Hyprland...\n"
yay -S hyprland
mkdir $CONFIG_DIR/hypr

printf "Installing terminal packages...\n"
yay -S kitty lsd fastfetch
mkdir $CONFIG_DIR/kitty $CONFIG_DIR/fastfetch

read -n1 -rp "Would you like to install zsh shell with suggestions and syntax highlighting? (Y/n)" input
case $input in
  y|Y)
    yay -S zsh zsh-autosuggestions zsh-syntax-highlighting ;;
  n|N)
    printf "\nSkipping zsh and its plugins...\n" ;;
  *)
    printf "\nInvalid input, skipping zsh and its plugins...\n" ;;
esac

printf "Installing NeoVim...\n"
yay -S neovim
mkdir $CONFIG_DIR/nvim

printf "Installing waybar...\n"
yay -S waybar
mkdir $CONFIG_DIR/waybar

printf "Installing swww for wallpapers...\n"
yay -S swww
mkdir $CONFIG_DIR/swww

printf "Installing eww for widgets...\n"
yay -S eww
mkdir $CONFIG_DIR/eww

printf "Installing swaync for desktop notifications...\n"
yay -S swaync
mkdir $CONFIG_DIR/swaync

printf "Installing walker and elephant with basic provider lists...\n"
yay -S walker elephant elephant-providerlist elephant-desktopapplications elephant-files
mkdir $CONFIG_DIR/walker $CONFIG_DIR/elephant

read -n1 -p "Would you like to install the additional elephant provider lists? (Y/n)" input
case $input in
	y|Y) yay -S elephant-archlinuxpkgs elephant-calc elephant-clipboard elephant-menus elephant-runner elephant-symbols elephant-todo elephant-unicode elephant-websearch ;;
  n|N) printf "\nSkipping additional elephant providerlists...\n" ;;
  *) printf "\nInvalid input, skipping additional providerlists...\n" ;;
esac
