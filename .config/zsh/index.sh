declare -A OS_ENUM
OS_ENUM=(
  [mac]="macos"
  [linux]="linux"
  [windows]="windows"
)
declare -r CURRENT_OS=$($HOME/.config/custom_scripts/getCurrentOS.sh)

declare -r CONFIG_ZSH_ROOT=$HOME/.config/zsh
declare -r LOCAL_ZSH_INDEX=$HOME/.config/zsh_local/index.sh

export EDITOR="nvim"

# Sourcing aliases
source $CONFIG_ZSH_ROOT/aliases.sh

# Source local zsh configs
if [[ -f $LOCAL_ZSH_INDEX ]]; then
  source $LOCAL_ZSH_INDEX
fi

# Sourcing terminal apps
source $CONFIG_ZSH_ROOT/programs/index.sh

