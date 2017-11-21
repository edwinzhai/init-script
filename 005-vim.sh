#!/bin/bash

sudo apt-get install -y vim ctags

#need libcang1 for clang_complete plugin
sudo apt-get install -y libclang1

cp data/.vimrc ~/

mkdir ~/.vim/after/plugin -p
mkdir ~/.vim/after/autoload -p
mkdir ~/.vim/after/plugged -p
cp data/cscope_maps_v2.vim ~/.vim/after/plugin/
cp data/plug.vim ~/.vim/after/autoload/

