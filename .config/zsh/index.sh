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

# Set history file path and size
export HISTFILE=~/.zsh_history
export HISTSIZE=5000            # Adjust to your preference
export SAVEHIST=10000           # Adjust to your preference
# Append commands to history file
setopt APPEND_HISTORY
setopt INC_APPEND_HISTORY
setopt SHARE_HISTORY

# Autoloading completion
autoload -Uz compinit
compinit

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

