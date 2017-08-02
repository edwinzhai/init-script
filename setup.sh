#!/bin/sh
sudo apt-get install cscope quilt byobu git-review patchutils

byobu-select-backend screen
byobu-disable-prompt
byobu-ctrl-a screen

#sudo pip install pycscope

cp data/.vimrc ~/
cp data/.gitconfig ~/
cp data/id_rsa* ~/.ssh/

mkdir ~/.vim/after/plugin -p
cp data/cscope_maps_v2.vim ~/.vim/after/plugin/





