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

# Check if .config folder exists
if [[ ! -d $HOME/.config ]]; then
    mkdir $HOME/.config
fi

cd $HOME/dotfiles
stow .

if [[ -x "$(command -v git)" ]]; then
    git config --global core.excludesfile ~/.gitignore-global
fi

