if [ -d $HOME/.tmuxifier ]; then
  export PATH="$HOME/.tmuxifier/bin:$PATH"
  eval "$(tmuxifier init -)"
fi

