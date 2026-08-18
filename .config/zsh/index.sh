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


# Enable zsh-completions use this or carapace
source $CONFIG_ZSH_ROOT/plugins/zsh-completions.sh
autoload -Uz compinit; compinit

source $CONFIG_ZSH_ROOT/programs/index.sh

source $CONFIG_ZSH_ROOT/plugins/fzf-tab.sh # WARNING: Should be the first plugin to load after compinit
source $CONFIG_ZSH_ROOT/plugins/zsh-autosuggestions.sh
source $CONFIG_ZSH_ROOT/plugins/fast-syntax-highlighting.sh
source $CONFIG_ZSH_ROOT/plugins/zsh-better-npm-completion.sh

# Sourcind path
source $CONFIG_ZSH_ROOT/path.sh
# Sourcing aliases
source $CONFIG_ZSH_ROOT/aliases.sh

# Source local zsh configs
if [[ -f $LOCAL_ZSH_INDEX ]]; then
    source $LOCAL_ZSH_INDEX
fi

