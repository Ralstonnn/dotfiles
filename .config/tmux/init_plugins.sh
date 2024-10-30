#!/bin/bash

if [[ ! -d ./plugins ]]; then
	mkdir ./plugins
fi

if [[ ! -d ./plugins/tpm ]]; then
	mkdir plugins
	git clone https://github.com/tmux-plugins/tpm ./plugins/tpm
fi

