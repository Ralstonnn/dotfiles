# Carapace disabled: its zsh backend double-escapes spaces in paths and returns
# full paths, breaking fzf-tab deep completion. Use zsh-completions instead.
# if [ -x "$(command -v carapace)" ]; then
#     export CARAPACE_BRIDGES='zsh,fish,bash,inshellisense' # optional
#     zstyle ':completion:*' format $'\e[2;37mCompleting %d\e[m'
#     source <(carapace _carapace)
# fi
