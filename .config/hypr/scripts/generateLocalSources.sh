#!/usr/bin/env bash

CONF_DIR="$HOME/.config/hypr/configs/local"
INCLUDE_FILE="$HOME/.config/hypr/configs/local/include.lua"

if [ ! -d "$CONF_DIR" ]; then
    mkdir -p "$CONF_DIR"
fi

echo "" > "$INCLUDE_FILE" # clear the file

for file in "$CONF_DIR"/*.lua; do
    # Skip if it's the include file itself
    [ "$(basename "$file")" = "$(basename "$INCLUDE_FILE")" ] && continue
    [ -f "$file" ] && echo "require(\"configs/local/$(basename "$file" .lua)\")" >> "$INCLUDE_FILE"
done
