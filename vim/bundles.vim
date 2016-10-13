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
Plugin 'mileszs/ack.vim'
Plugin 'mru.vim'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'maxbrunsfeld/vim-yankstack'
Plugin 'fatih/vim-go'
Plugin 'airblade/vim-gitgutter'
Plugin 'kien/ctrlp.vim'

call vundle#end()
filetype plugin indent on
