#!/bin/bash

CURRENT_DIRECTORY=~/dotfiles/installScripts/terminal_apps

source $CURRENT_DIRECTORY/install_nvm.sh

################
# INSTALL TMUX #
################
if [ ! -x "$(command -v tmux)" ]; then
    git clone https://github.com/tmux/tmux.git ~/Downloads/tmux
    cd ~/Downloads/tmux
    sh autogen.sh
    ./configure
    make && sudo make install
    rm -rf ~/Downloads/tmux
fi