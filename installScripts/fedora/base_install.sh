#!/usr/bin/bash

BASE_SCRIPT_FOLDER=$HOME/dotfiles/installScripts

#####################
# Add carapace repo #
#####################
if [[ ! -f /etc/yum.repos.d/fury.repo ]]; then
    echo -e "[fury]
name=Gemfury Private Repo
baseurl=https://yum.fury.io/rsteube/
enabled=1
gpgcheck=0" | sudo tee /etc/yum.repos.d/fury.repo
fi

####################
# Install starship #
####################
if ! dnf repo list --enabled | grep starship; then
    sudo dnf copr enable atim/starship -y
fi

#######################
# Enable lazygit repo #
#######################
if ! dnf repo list --enabled | grep lazygit; then
    sudo dnf copr enable dejan/lazygit -y
fi

#######################
# Enable ghostty repo #
#######################
if ! dnf repo list --enabled | grep ghostty; then
    sudo dnf copr enable scottames/ghostty -y
fi

########################
# Install NVM and Node #
########################
source $BASE_SCRIPT_FOLDER/terminal_apps/install_nvm.sh

####################
# Install packages #
####################
sudo dnf update -y && sudo dnf upgrade -y
sudo dnf install fedora-workstation-repositories -y # Enable workstation repositories
sudo dnf update -y && sudo dnf upgrade -y
sudo dnf config-manager setopt google-chrome.enabled=1 -y # Enable google chrome repo
sudo dnf install -y @development-tools clear git vim neovim tmux zsh\
    carapace-bin zoxide fzf lazygit ripgrep stow starship unzip google-chrome-stable\
    ghostty
