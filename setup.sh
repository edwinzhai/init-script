#!/bin/sh
sudo apt-get install cscope quilt byobu git-review patchutils

#configure byobu
byobu-select-backend screen
byobu-disable-prompt
byobu-ctrl-a screen

cat << EOF > ~/.byobu/windows
screen -t su
screen -t cmd
screen -t cmd2
screen -t hv
screen -t dm
screen -t kernel
screen -t debug
screen -t IOC
screen -t ABL
screen -t flash
screen -t other
EOF

BYOBU_KEYFILE=~/.byobu/keybindings
if grep -q 'gzhai' $BYOBU_KEYFILE; then
    echo 'keybindings already there!'
else
    cat << EOF >> $BYOBU_KEYFILE

# gzhai:set a hot key(F1) for meta (default ^a, which used by xen)
bindkey -k k1 meta

# bind alt-q for other, alt-h/l prev/next, alt-1/2 select
bindkey "^[q" other
bindkey "^[h" prev
bindkey "^[l" next
bindkey "^[0" select 0
bindkey "^[1" select 1
bindkey "^[2" select 2
bindkey "^[3" select 3
bindkey "^[4" select 4
bindkey "^[5" select 5
bindkey "^[6" select 6
bindkey "^[7" select 7
bindkey "^[8" select 8
bindkey "^[9" select 9
bindkey "^['" focus
EOF
fi

#sudo pip install pycscope

cp data/.vimrc ~/
cp data/.gitconfig ~/
cp data/id_rsa* ~/.ssh/

mkdir ~/.vim/after/plugin -p
cp data/cscope_maps_v2.vim ~/.vim/after/plugin/





