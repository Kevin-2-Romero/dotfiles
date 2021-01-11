#!/bin/bash

pacman -S install git feh neofetch scrot alsa alsa-utils i3-gaps binutils rofi xorg xorg-server xorg-xinit gdm curl wget neovim materia-gtk-theme gnome-tweaks

mkdir /home/kevin/.config
mkdir /home/kevin/AUR
cd /home/kevin/AUR

git clone https://aur.archlinux.org/nerd-fonts-complete.git
cd nerd-fonts-complete
makepkg -si
cd ..

git clone https://aur.archlinux.org/polybar.git
cd polybar
makepkg -si
cd ..

mkdir /home/kevin/Git
cd /home/kevin/Git

git clone --depth=1 https://github.com/adi1090x/rofi.git
cd rofi
chmod +x setup.sh
echo "1" | ./setup.sh

cd /home/kevin/
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'


cd /home/kevin/Downloads
cp alacritty i3 nvim polybar rofi -r /home/kevin/.config/
