#!/bin/bash

CONF_DIR="$HOME/.config/hypr/configs/local"
INCLUDE_FILE="$HOME/.config/hypr/configs/local/include.conf"

> "$INCLUDE_FILE" # clear the file

for file in "$CONF_DIR"/*.conf; do
    # Skip if it's the include file itself
    [ "$(basename "$file")" = "$(basename "$INCLUDE_FILE")" ] && continue
    [ -f "$file" ] && echo "source = $file" >> "$INCLUDE_FILE"
done
