#!/bin/sh

sudo apt-get install -y byobu

##configure byobu
#byobu-select-backend screen
byobu-disable-prompt
byobu-ctrl-a screen

##configure tmux backend
#cat << EOF > ~/.byobu/windows.tmux
#screen -t cmd
#EOF

BYOBU_KEYFILE=~/.byobu/keybindings.tmux
if grep -q 'gzhai' $BYOBU_KEYFILE; then
    echo 'tmux keybindings already there!'
else
    cat << EOF >> $BYOBU_KEYFILE

# gzhai: keybindings
unbind-key -n M-1
unbind-key -n M-2
unbind-key -n M-3
unbind-key -n M-4
unbind-key -n M-5
bind-key -n M-h previous-window
bind-key -n M-l next-window
bind-key -n M-q last-window
bind-key -n M-0 select-window -t :0
bind-key -n M-1 select-window -t :1
bind-key -n M-2 select-window -t :2
bind-key -n M-3 select-window -t :3
bind-key -n M-4 select-window -t :4
bind-key -n M-5 select-window -t :5
bind-key -n M-6 select-window -t :6
bind-key -n M-7 select-window -t :7
bind-key -n M-8 select-window -t :8
bind-key -n M-9 select-window -t :9
bind-key -n M-p last-pane
EOF
fi

##configure screen backend
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

