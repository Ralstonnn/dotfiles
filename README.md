## Installation

### First, check out the dotfiles repo in your $HOME directory using git

```
git clone git@github.com:Ralstonnn/dotfiles.git
cd dotfiles
```

### Then use GNU stow to create symlinks or run init script
```
stow .
```
##### Or
```
~/dotfiles/init.sh
```

### Add glodal gitignore
```
git config --global core.excludesfile ~/.gitignore-global
```

### To use tmux install tmux and tmuxifier
To install tmux use
```
brew install tmux
```
To install tmuxifier use 
```
git clone https://github.com/jimeh/tmuxifier.git ~/.tmuxifier
```
