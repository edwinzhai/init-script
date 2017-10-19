#!/bin/sh
sudo apt-get install cscope quilt git-review patchutils

#sudo pip install pycscope

cp data/.gitconfig ~/
cp data/id_rsa* ~/.ssh/

#bash setup
cat data/bash_alias >> ~/.bash_aliases

./004-byobu.sh
./005-vim.sh
