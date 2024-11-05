if [ -x "$(command -v fzf)" ]; then
    source <(fzf --zsh)
    export FZF_CTRL_R_OPTS="--height 50% --layout=reverse --tmux center"
elif [ -f ~/.fzf.zsh ]; then
    source ~/.fzf.zsh
    export FZF_CTRL_R_OPTS="--height 50% --layout=reverse --tmux center"
fi

