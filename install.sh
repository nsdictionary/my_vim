#!/bin/bash

ln -s ~/Dropbox/sign/my_vim/vimrc ~/.vimrc
ln -s ~/Dropbox/sign/my_vim/vim ~/.vim
ln -s ~/Dropbox/sign/my_vim/vim/vimrcs/ideavimrc ~/.ideavimrc
ln -s ~/Dropbox/sign/my_vim/vim/vimrcs/vrapperrc ~/.vrapperrc
vim +PluginInstall +qall

echo "Installed the Ultimate Vim configuration successfully! Enjoy :-)"
