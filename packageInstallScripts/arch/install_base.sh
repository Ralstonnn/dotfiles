#!/usr/bin/bash

###########################
# INSTALLTING YAY
###########################
~/dotfiles/packageInstallScripts/arch/install_yay.sh

###########################
# INSTALL NVM AND NODE
###########################
cd ~/Downloads/
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.3/install.sh | bash
cd
source ~/.zshrc
nvm install node

###########################
# INSTALL BASE PACKAGES
###########################
yay -S --needed git base-devel vim neovim stow zsh fzf ripgrep starship zoxide lazygit tmux openssh carapace-bin v2rayn-bin google-chrome telegram-desktop visual-studio-code-bin bitwarden jdk-openjdk steam mangohud wl-clipboard ghostty localsend-bin htop curl wget fastfetch obsidian

