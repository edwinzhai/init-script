#!/bin/bash

read -p "pls. setup proxy first! continue? (y/n)" -n 1 answer

if [ "$answer" != "y" ]; then
    exit 0
fi

sudo mv /etc/apt/sources.list /etc/apt/sources.list.bak
sudo cp data/sources-16.04-163.list /etc/apt/sources.list
sudo apt-update
sudo apt-get install -y aptitude \
    minicom \
    openssh-server \
    git \
    cscope



