function load_plugins {
    # Surce fzf-tab
    if [ -f ~/.zsh/plugins/fzf-tab/fzf-tab.plugin.zsh ]; then
        source ~/.zsh/plugins/fzf-tab/fzf-tab.plugin.zsh
    fi
}

if [ -x "$(command -v fzf)" ]; then
    source <(fzf --zsh)
    export FZF_CTRL_R_OPTS="--height 50% --layout=reverse --tmux center"
    load_plugins
elif [ -f ~/.fzf.zsh ]; then
    source ~/.fzf.zsh
    export FZF_CTRL_R_OPTS="--height 50% --layout=reverse --tmux center"
fi
