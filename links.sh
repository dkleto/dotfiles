#! /bin/bash

## Simple hacky script to set up config directories and symlink dotfiles as
## appropriate.

# First make sure these dirs exist
DIRECTORIES="$HOME/.i3"
for i in $DIRECTORIES; do mkdir -p $i; done

# Symlink config files into place
DOTFILES=`pwd`
ln -s $DOTFILES/Xresources/Xresources $HOME/.Xresources
ln -s $DOTFILES/i3/config $HOME/.i3/config
ln -s $DOTFILES/i3/i3status.conf $HOME/.i3status.conf
ln -s $DOTFILES/rofi/config.rasi $HOME/.config/rofi/config.rasi
ln -s $DOTFILES/rofi/PaperColour.rasi $HOME/.config/rofi/PaperColour.rasi
ln -s $DOTFILES/vim/vimrc $HOME/.vimrc
ln -s $DOTFILES/vim/vim $HOME/.vim

xrdb -merge ~/.Xresources
