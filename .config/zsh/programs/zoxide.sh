if [ -x "$(command -v zoxide)" ]; then
    [[ $CURRENT_OS == $OS_ENUM[mac] ]] && eval "$(zoxide init --cmd cd zsh)"
    [[ $CURRENT_OS == $OS_ENUM[linux] ]] && eval "$(zoxide init zsh)"
fi

