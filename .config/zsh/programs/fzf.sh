if [ -x "$(command -v fzf)" ]; then
    source <(fzf --zsh)
else
    [ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
fi

