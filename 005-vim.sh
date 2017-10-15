#!/bin/sh

cp data/.vimrc ~/

mkdir ~/.vim/after/plugin -p
mkdir ~/.vim/after/autoload -p
mkdir ~/.vim/after/plugged -p
cp data/cscope_maps_v2.vim ~/.vim/after/plugin/
cp data/plug.vim ~/.vim/after/autoload/

