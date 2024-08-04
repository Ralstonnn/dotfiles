CURRENT_DIR=$HOME/.config/zsh
LOCAL_ZSH_INDEX=$HOME/.config/zsh_local/index.sh

# Sourcing aliases
source $CURRENT_DIR/aliases.sh

# Source local zsh configs
if [[ -f $LOCAL_ZSH_INDEX ]]; then
  source $LOCAL_ZSH_INDEX
fi

