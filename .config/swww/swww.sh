!/usr/bin/bash
#start swww
WALLPAPERS_DIR=/usr/share/backgrounds
WALLPAPER=$(find "$WALLPAPERS_DIR" -type f | shuf -n 1)
swww img "$WALLPAPER"
