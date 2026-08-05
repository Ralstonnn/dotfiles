if [ -x "$(command -v starship)" ]; then
    export STARSHIP_CONFIG="$HOME/.config/starship/starship.toml"
    eval "$(starship init zsh)"

    nix() {
        # NOTE: Tmp function to fix `nix shell` detection in starship
        if [[ $1 == "shell" ]]; then
            IN_NIX_SHELL=impure command nix "$@"
        else
            command nix "$@"
        fi
    }
fi
