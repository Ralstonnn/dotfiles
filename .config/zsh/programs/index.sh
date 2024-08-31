CONFIG_ZSH_PROGRAMS_DIR=$HOME/.config/zsh/programs

for file in "$CONFIG_ZSH_PROGRAMS_DIR"/*; do
  if [ -d "$file" ]; then
    # If the file is a directory, recursively source files in it
    source_files "$file"
  elif [ -f "$file" ] && [[ "$(basename "$file")" != "index.sh" ]]; then
    # If it's a regular file, source it
    source "$file"
  fi
done

