#!/usr/bin/bash

if [ ! -x "$(command -v yay)" ]; then
    ~/dotfiles/packageInstallScripts/arch/install_yay.sh
fi

yay -S --needed ghostty tofi dolphin google-chrome hyprland hyprpaper hypridle hyprlock hyprshutdown hyprland-guiutils hyprpolkitagent waybar eww
