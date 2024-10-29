declare -A OS_ENUM
OS_ENUM=(
  [mac]="macos"
  [linux]="linux"
  [windows]="windows"
)
CURRENT_OS=$($HOME/.config/custom_scripts/getCurrentOS.sh)

CONFIG_ZSH_ROOT=$HOME/.config/zsh
LOCAL_ZSH_INDEX=$HOME/.config/zsh-local/index.sh

export EDITOR="nvim"

# Sourcind path
source $CONFIG_ZSH_ROOT/path.sh
# Sourcing aliases
source $CONFIG_ZSH_ROOT/aliases.sh

# Sourcing terminal apps
source $CONFIG_ZSH_ROOT/programs/index.sh

# Source local zsh configs
if [[ -f $LOCAL_ZSH_INDEX ]]; then
  source $LOCAL_ZSH_INDEX
fi

