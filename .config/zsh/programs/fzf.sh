if [ -x "$(command -v fzf)" ]; then
    source <(fzf --zsh)
    export FZF_CTRL_R_OPTS="--height 50% --layout=reverse --tmux center"
else
    [ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
    export FZF_CTRL_R_OPTS="--height 50% --layout=reverse --tmux center"
fi

