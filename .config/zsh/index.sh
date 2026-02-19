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

# Autoloading completion for carapace
# autoload -Uz compinit
# compinit

source $CONFIG_ZSH_ROOT/programs/oh-my-zsh.sh
source $CONFIG_ZSH_ROOT/programs/starship.sh
# source $CONFIG_ZSH_ROOT/programs/carapace.sh

autoload -U compinit; compinit

source $CONFIG_ZSH_ROOT/programs/fzf.sh
source $CONFIG_ZSH_ROOT/programs/zsh-autosuggestions.sh # WARNING: Should be loaded after fzf if using fzf-tab plugin
source $CONFIG_ZSH_ROOT/programs/fast-syntax-highlighting.sh # WARNING: Should be loaded after fzf if using fzf-tab plugin
source $CONFIG_ZSH_ROOT/programs/zoxide.sh
source $CONFIG_ZSH_ROOT/programs/nvm.sh
source $CONFIG_ZSH_ROOT/programs/tmux.sh
source $CONFIG_ZSH_ROOT/programs/tmuxifier.sh
source $CONFIG_ZSH_ROOT/programs/yazi.sh
source $CONFIG_ZSH_ROOT/programs/thefuck.sh
source $CONFIG_ZSH_ROOT/programs/llvm.sh
source $CONFIG_ZSH_ROOT/programs/rust.sh
source $CONFIG_ZSH_ROOT/programs/pyenv.sh

# Sourcind path
source $CONFIG_ZSH_ROOT/path.sh
# Sourcing aliases
source $CONFIG_ZSH_ROOT/aliases.sh

# Source local zsh configs
if [[ -f $LOCAL_ZSH_INDEX ]]; then
    source $LOCAL_ZSH_INDEX
fi

