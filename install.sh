#!/usr/bin/env bash
# Configuration file installation script.

CONF_DIR=$HOME/.config

function linkconfig {
    if [ -e $CONF_DIR/$1 -a ! -e $CONF_DIR/$1.bak ]; then
        mv $CONF_DIR/$1 $CONF_DIR/$1.bak
    fi
    ln -snf $(pwd)/dotfiles/$1 $CONF_DIR/$1
}

function linkdotfolder {
    if [ -e $HOME/.$2 -a ! -e $HOME/.$2.bak ]; then
        mv $HOME/.$2 $HOME/.$2.bak
    fi
    ln -snf $(pwd)/dotfiles/$1 $HOME/.$2
}

function linkdotfile {
    if [ -e $HOME/.$2 -a ! -e $HOME/.$2.bak ]; then
        mv $HOME/.$2 $HOME/.$2.bak
    fi
    ln -sf $(pwd)/dotfiles/$1/$2 $HOME/.$2
}

function linkfolder {
    if [ -e $CONF_DIR/$2 -a ! -e $CONF_DIR/$2.bak ]; then
        mv $CONF_DIR/$2 $CONF_DIR/$2.bak
    fi
    ln -snf $(pwd)/dotfiles/$1/$2 $CONF_DIR/$2
}

function linkfolderinto {
    if [ -e $CONF_DIR/$1 -a ! -e $CONF_DIR/$1.bak ]; then
        mv $CONF_DIR/$1 $CONF_DIR/$1.bak
    fi
    ln -snf $(pwd)/dotfiles/$1 $CONF_DIR/$1
}

function runhook {
    for script in $(pwd)/hooks/$1/*
    do
        source $script > /dev/null
    done
}

if [ ! -d $CONF_DIR ]; then
    mkdir $CONF_DIR
fi

linkfolderinto 'nvim'
linkdotfile 'zsh' 'zshrc'
linkfolder 'zsh' 'zsh-plugin'
linkdotfile 'tmux' 'tmux.conf'

curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
