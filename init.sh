#!/usr/bin/env bash

# If stow is not intsalled exit with error
if [[ ! -x "$(command -v stow)" ]]; then
    echo "Error: install stow"
    exit 1
fi

# Check if .zshrc exists and rename it
if [[ -f $HOME/.zshrc ]]; then
    mv $HOME/.zshrc $HOME/.zshrc.bak
fi

# Check if .config directory exists
if [[ ! -d $HOME/.config ]]; then
    mkdir $HOME/.config
fi

# Check if Pictures directory exists
if [[ ! -d $HOME/Pictures ]]; then
    mkdir $HOME/Pictures
fi

cd $HOME/dotfiles
stow .

if [[ -x "$(command -v git)" ]]; then
    git config --global core.excludesfile ~/.gitignore-global
    git submodule init
    git submodule update
    cd ~/.config/nvim && git switch main && cd
fi

# Change user default shell to zsh
if [[ -x "$(command -v zsh)" ]]; then
    chsh -s $(which zsh) $(whoami)
fi

