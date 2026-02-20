#!/usr/bin/bash

if [ ! -x "$(command -v yay)" ]; then
    ~/dotfiles/packageInstallScripts/arch/install_yay.sh
fi

yay -S ghostty tofi dolphin google-chrome hyprland hyprpaper waybar eww --needed
