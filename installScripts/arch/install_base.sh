#!/usr/bin/bash

###########################
# INSTALLTING YAY
###########################
source $HOME/dotfiles/packageInstallScripts/arch/install_yay.sh

###########################
# INSTALL NVM AND NODE
###########################
source $HOME/dotfiles/packageInstallScripts/terminal_apps/install_nvm.sh

###########################
# INSTALL BASE PACKAGES
###########################
yay -S --needed git base-devel vim neovim stow zsh fzf ripgrep starship zoxide lazygit tmux openssh carapace-bin v2rayn-bin google-chrome telegram-desktop visual-studio-code-bin bitwarden jdk-openjdk mangohud wl-clipboard ghostty localsend-bin htop curl wget fastfetch obsidian

