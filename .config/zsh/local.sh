# Define the directory containing the files to source
DIRECTORY="$HOME/.config/zsh_local"

# Loop through all files in the directory and source them
if [[ -d "$DIRECTORY" ]] && [[ "$(ls -A "$DIRECTORY" | wc -l)" -ne 0 ]]; then
  for file in "$DIRECTORY"/*; do
    if [ -f "$file" ]; then
      source "$file"
    fi
  done
fi

