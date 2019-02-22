#!/bin/sh

# backup existing dotfiles before making any changes
# renames file or dir with .old extension, removes if symlink
backup() {
  if [ -L $1 ]; then
    rm $1
  elif [ -d $1 ] || [ -f $1 ]; then
    mv $1 $1.old
  fi
}

backup ~/.bash_profile
ln -fs ~/dotfiles/bash_profile ~/.bash_profile
backup ~/.bashrc
ln -fs ~/dotfiles/bashrc ~/.bashrc
backup ~/.vim
ln -fns ~/dotfiles/vim ~/.vim
backup ~/.vimrc
ln -fs ~/dotfiles/vimrc ~/.vimrc
backup ~/.gitconfig
ln -fs ~/dotfiles/gitconfig ~/.gitconfig
backup ~/.inputrc
ln -fs ~/dotfiles/inputrc ~/.inputrc
backup ~/.minttyrc
ln -fs ~/dotfiles/minttyrc ~/.minttyrc

mkdir -p vim/backup
mkdir -p vim/tmp

if [ -d ~/.vim/bundle/Vundle.vim ]; then
    rm -rf ~/.vim/bundle/Vundle.vim
fi
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim -u vim/bundles.vim +PluginInstall +qa
