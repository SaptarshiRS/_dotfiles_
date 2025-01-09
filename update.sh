#!/bin/bash

# archive=$(pwd)/dot_archives

echo "Grabbing all dotfiles"
[ -d .config/ ] && rm -r .config/ && mkdir .config/

# hypr
cp -r $HOME/.config/hypr/ .config/

# waybar
cp -r $HOME/.config/waybar/ .config/

# kitty
cp -r $HOME/.config/kitty/ .config/

# swww
cp -r $HOME/.config/swww/ .config/

# systemd
cp -r $HOME/.config/systemd/ .config/

# fastfetch
cp -r $HOME/.config/fastfetch/ .config/

# fuzzel
cp -r $HOME/.config/fuzzel/ .config/

# zathura
cp -r $HOME/.config/zathura/ .config/

# starship
cp -r $HOME/.config/starship/ .config/

# fnott
cp -r $HOME/.config/fnott/ .config/

#------------------------------------------------------------------------------

# vim
cp $HOME/.vimrc .config/

# bash
cp $HOME/.bashrc .config/
