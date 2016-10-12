"----------------------------------------------------------------------"
" Vundle config
"----------------------------------------------------------------------"
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-surround'
Plugin 'yggdroot/indentline'
Plugin 'benmills/vimux'
Plugin 'The-NERD-Tree'
Plugin 'git://github.com/kien/rainbow_parentheses.vim.git'
Plugin 'vim-airline/vim-airline'

call vundle#end()
filetype plugin indent on
