#!/bin/bash

# Array of all files in wallpapers directory
wallpapers=(~/Pictures/Wallpapers/*)

# echo ${wallpapers[*]}

randNum=$[ $RANDOM % ${#wallpapers[@]} ]

gsettings set org.gnome.desktop.background picture-uri file://${wallpapers[randNum]}

