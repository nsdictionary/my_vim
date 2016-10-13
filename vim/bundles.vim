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
Plugin 'airblade/vim-gitgutter'
Plugin 'kien/ctrlp.vim'
Plugin 'mattn/emmet-vim'
Plugin 'scrooloose/syntastic'
Plugin 'bufexplorer.zip'

Plugin 'fatih/vim-go'
Plugin 'tpope/vim-rails'
Plugin 'pangloss/vim-javascript'
Plugin 'kchmck/vim-coffee-script'

call vundle#end()
filetype plugin indent on
