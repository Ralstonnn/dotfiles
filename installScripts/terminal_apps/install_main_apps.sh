#!/bin/bash

CURRENT_DIRECTORY=$HOME/dotfiles/installScripts/terminal_apps

source $CURRENT_DIRECTORY/install_nvm.sh

################
# INSTALL TMUX #
################
if [ ! -x "$(command -v tmux)" ]; then
    git clone https://github.com/tmux/tmux.git $HOME/Downloads/tmux
    cd $HOME/Downloads/tmux
    sh autogen.sh
    ./configure
    make && sudo make install
    rm -rf $HOME/Downloads/tmux
fi
