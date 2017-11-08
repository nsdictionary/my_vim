"----------------------------------------------------------------------"
" Vundle config
"----------------------------------------------------------------------"
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-surround'
Plugin 'The-NERD-Tree'
Plugin 'vim-airline/vim-airline'
Plugin 'mileszs/ack.vim'
Plugin 'mru.vim'
Plugin 'maxbrunsfeld/vim-yankstack'
Plugin 'airblade/vim-gitgutter'
Plugin 'kien/ctrlp.vim'
Plugin 'bufexplorer.zip'
Plugin 'easymotion/vim-easymotion'
Plugin 'tpope/vim-endwise'
Plugin 'paradigm/vim-multicursor'
Plugin 'gorodinskiy/vim-coloresque'
Plugin 'scrooloose/nerdcommenter'
Plugin 'AutoComplPop'
Plugin 'yggdroot/indentline'
Plugin 'osyo-manga/vim-over'
Plugin 'adinapoli/vim-markmultiple'
Plugin 'johngrib/vim-game-code-break'
Plugin 'scrooloose/syntastic'
Plugin 'elzr/vim-json'
Plugin 'bronson/vim-trailing-whitespace'

call vundle#end()
filetype plugin indent on
