#!/bin/bash
#./001-package.sh

sudo apt-get -y install cscope quilt git-review patchutils

#sudo pip install pycscope

#cp data/.gitconfig ~/
#cp data/id_rsa* ~/.ssh/

#bash setup
cat data/bash_aliases >> ~/.bash_aliases

#copy own script
cp -a data/bin ~/

#./004-byobu.sh
./005-vim.sh

#./009-dev.sh
