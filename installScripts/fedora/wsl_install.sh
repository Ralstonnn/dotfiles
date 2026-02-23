#!/usr/bin/bash

BASE_SCRIPT_FOLDER=$HOME/dotfiles/installScripts

print_red()    { echo -e "\033[31m$*\033[0m"; }
print_green()  { echo -e "\033[32m$*\033[0m"; }
print_yellow() { echo -e "\033[1;33m$*\033[0m"; }

#####################
# Add carapace repo #
#####################
if [[ ! -f /etc/yum.repos.d/fury.repo ]]; then
print_green "\nAdding repo for carapace-bin\n"

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
    print_green "\nAdding repo for starship\n"
    sudo dnf copr enable atim/starship
fi

#######################
# Enable lazygit repo #
#######################
if ! dnf repo list --enabled | grep lazygit; then
    print_green "\nAdding repo for lazygit\n"
    sudo dnf copr enable dejan/lazygit
fi

########################
# Install NVM and Node #
########################
print_green "\nInstalling NVM\n"
source $BASE_SCRIPT_FOLDER/terminal_apps/install_nvm.sh

####################
# Install packages #
####################
print_green "\nInstalling base packages\n"
sudo dnf update -y && sudo dnf upgrade -y
sudo dnf install -y @development-tools clear git vim neovim zsh\
    carapace-bin zoxide lazygit ripgrep stow starship unzip curl wget

#####################
# Install tmux 3.6a #
#####################
if [ ! -x "$(command -v tmux)" ]; then
    print_green "\nInstalling tmux\n"
    sudo dnf install libevent ncurses libevent-devel ncurses-devel gcc make bison pkg-config awk -y # Installing prerequizites
    if [ ! -d $HOME/Downloads ]; then
        mkdir $HOME/Downloads
    fi
    cd $HOME/Downloads
    wget https://github.com/tmux/tmux/releases/download/3.6a/tmux-3.6a.tar.gz # Downloading tmux
    # Installing tmux
    tar -zxf tmux-*.tar.gz
    cd tmux-*/
    ./configure
    make && sudo make install
fi

###############
# Install fzf #
###############
if [ ! -x "$(command -v fzf)" ]; then
    print_green "\nInstalling fzf\n"
    git clone --depth 1 https://github.com/junegunn/fzf.git $HOME/.fzf
    $HOME/.fzf/install
fi
