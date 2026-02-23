#!/usr/bin/bash

#####################
# Add carapace repo #
#####################
if [[ ! -f /etc/yum.repos.d/fury.repo ]]; then
	sudo echo -e "[fury] 
	name=Gemfury Private Repo 
	baseurl=https://yum.fury.io/rsteube/ 
	enabled=1 
	gpgcheck=0" | sudo tee /etc/yum.repos.d/fury.repo
fi

#######################
# Enable lazygit repo #
#######################
if ! dnf repo list --enabled | grep lazygit; then 
	sudo dnf copr enable dejan/lazygit
fi

####################
# Install packages #
####################
sudo dnf update -y && sudo dnf upgrade -y
sudo dnf install -y @development-tools clear git vim neovim tmux zsh carapace-bin zoxide fzf lazygit ripgrep
