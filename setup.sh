#!/bin/sh

ln -ns ~/dotfiles/bash_profile ~/.bash_profile
ln -ns ~/dotfiles/bashrc ~/.bashrc
ln -ns ~/dotfiles/vim ~/.vim
ln -ns ~/dotfiles/vimrc ~/.vimrc
ln -ns ~/dotfiles/gitconfig ~/.gitconfig
ln -ns ~/dotfiles/inputrc ~/.inputrc
ln -ns ~/dotfiles/minttyrc ~/.minttyrc

git clone https://github.com/milkbikis/powerline-bash ~/dotfiles/powerline-bash
ln -s ~/dotfiles/powerline-bash/powerline-bash.py ~/powerline-bash.py
