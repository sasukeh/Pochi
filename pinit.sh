#!/bin/sh
#  
#  Unix/Linux Environment build script
#  Author: Sasuke
#

if [ -e ~/.vim ] ; then
  else
    mkdir ~/.vim
fi

if [ -e  ~/.vimrc ]; then
  read ANS

ln -s Pochi/.tmux.conf ~/.
ln -s Pochi/.vimrc ~/.
ln -s Pochi/.zshrc ~/.
ln -s Pochi/.editorconfig ~/.
ln -s Pochi/.tmux.conf ~/.


