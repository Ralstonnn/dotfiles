#!/bin/bash

TMUX_PLUGINS_DIR=$HOME/.config/tmux/plugins 

if [[ ! -d $TMUX_PLUGINS_DIR ]]; then
	mkdir $TMUX_PLUGINS_DIR 
fi

if [[ ! -d $TMUX_PLUGINS_DIR/tpm ]]; then
	git clone https://github.com/tmux-plugins/tpm $TMUX_PLUGINS_DIR/tpm
fi

