#!/bin/bash
# Install the programs on main desktop as well as configuration files


# Download and install packages from arch main repository:
for P in $(cat packages.txt)
do
	pacman -S $P
done


# Download and install AUR packages into ~/AUR
mkdir -p ~/AUR && cd ~/AUR/

for P in $(cat AUR.txt)
do
	git clone https://aur.archlinux.org/$P.git
	cd $P
	makepkg -si
	cd ..
done

# Move config files to the correct location
mkdir -p ~/.config
mkdir -p ~/.config/i3
mkdir -p ~/.config/polybar
mkdir -p ~/.config/rofi
mkdir -p ~/.config/nvim/plugged

cd ~/Git/dotFiles

cp .Xresources ~/.Xresources
cp .bashrc ~/.bashrc
cp .zshrc ~/.zshrc
cp compton.conf ~/.config/
cp i3.config ~/.config/i3/config
cp init.vim ~/.config/nvim

cp -r polybar/* ~/.config/polybar/
cp -r rofi/* ~/.config/rofi/

echo "All done!\n\n"




