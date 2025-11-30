#!/usr/bin/env bash

echo "Installing git.."
sudo pacman -S git

echo "Installing yay package manager..."
cd $HOME
DIRECTORY="$HOME/yay"

if [ -d "$DIRECTORY" ]; then
	echo  "yay already installed, proceeding..."
else
	git clone https://aur.archlinux.org/yay.git
	cd yay
	makepkg -si
fi

echo "Installing terminal packages..."
yay -S kitty lsd fastfetch zsh zsh-autosuggestions zsh-syntax-highlighting

echo "Installing walker and elephant with basic provider lists..."
yay -S walker elephant elephant-providerlist elephant-desktopapplications elephant-archlinuxpkgs elephant-files

read -n1 -p "Would you like to install the additional elephant provider lists? (Y/n)" input
case $input in
	y|Y) yay -S elephant-calc elephant-clipboard elephant-menus elephant-runner elephant-symbols elephant-todo elephant-unicode elephant-websearch ;;
	n|N) echo "\nSkipping additional elephant providerlists..." ;;
	*) echo "\nInvalid input, skipping additional providerlists..." ;;
esac

echo "Installing AGS Framework..."
yay -S aylurs-gtk-shell-git
