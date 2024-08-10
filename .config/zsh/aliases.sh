# Python
alias venv='source ./venv/bin/activate'
alias rment='python3 $HOME/.config/zsh-config/Programs/EnterRemover/enter-remover.py'
alias cppf='echo $(pip3 freeze) > .pythonpackages'
alias pipifpp='pip install $(cat .pythonpackages)'
alias convertdtr='python3 $HOME/.config/zsh-config/Programs/DTRConverter/CurrencyConverterDollarsToRubles.py'

# Git
alias gitdcm='git add -A && git commit -m "update" && git push'
alias dfu='git --git-dir=$HOME/dotfiles/.git --work-tree=$HOME/dotfiles commit -am "update" && git --git-dir=$HOME/dotfiles/.git --work-tree=$HOME/dotfiles push'
alias lzg="lazygit"

# NPM
alias npms='npm start'
alias npmd='npm run dev'

# Yarn
alias ys='yarn run start'
alias yd='yarn run dev'
alias yw='yarn run watch'
alias ydh='yarn run dev --host'
alias yds='yarn run dev-ssr'
alias ydsh='yarn run dev-ssr --host'
alias yb='yarn run build'
alias yp='yarn run preview'
alias ys='yarn run test'

# Gradle
alias grn='gradle run'

# Flask
alias flaskrn='flask run'

# Neovim
alias v='nvim'
alias nv='nvim'
alias nvz='nvim ~/.zshrc'
alias nvv='nvim ~/.config/nvim'
alias nvca='nvim ~/.config/customaliases'
alias nvvz='nvm use default && nvim'
alias cnv='cd ~/.config/nvim'

# Neovide
alias nvd='neovide'

# Pacman
alias install='yay -S'
alias remove='yay -Rns'
alias update='yay -Syu'

# MariaDB
alias sdb='sudo systemctl start mariadb'
alias stdb='sudo systemctl stop mariabd'
alias db='mysql -u root -p'

# MongoDB
alias smdb='sudo systemctl start mongodb.service'
alias stmdb='sudo systemctl stop mongodb.service'

alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME/'
alias configupd="config commit -am 'update' && config push"

# Java
alias bootRun="mvn clean && mvn spring-boot:run"

# NVM
alias nvmd="nvm use default"
alias nvml="nvm use --lts"


# Other
alias cdn="cd ~/.config/nvim"
alias cda="cd ~/.config/custom_aliases"
alias sz="source $HOME/.zshrc"

