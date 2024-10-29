if [ -x "$(command -v starship)" ]; then
    export STARSHIP_CONFIG="$HOME/.config/starship/starship.toml"
    eval "$(starship init zsh)"
fi
