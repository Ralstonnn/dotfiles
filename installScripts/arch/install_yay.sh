#!/usr/bin/bash

###########################
# INSTALLTING YAY
###########################
cd $HOME/Downloads/
sudo pacman -S --needed git base-devel && git clone https://aur.archlinux.org/yay.git && cd yay && makepkg -si
cd ..
rm -rf yay
cd
