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
Plugin 'tpope/vim-endwise'
Plugin 'gorodinskiy/vim-coloresque'
Plugin 'scrooloose/nerdcommenter'
Plugin 'ajh17/vimcompletesme'
Plugin 'yggdroot/indentline'
Plugin 'osyo-manga/vim-over'
Plugin 'johngrib/vim-game-code-break'
Plugin 'scrooloose/syntastic'
Plugin 'elzr/vim-json'
Plugin 'bronson/vim-trailing-whitespace'
Plugin 'FelikZ/ctrlp-py-matcher'
Plugin 'lyokha/vim-xkbswitch'
Plugin 'pseewald/vim-anyfold'

" Like emacs deft
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-notes'

" Clojure
Plugin 'guns/vim-clojure-static'
Plugin 'tpope/vim-fireplace'
Plugin 'kien/rainbow_parentheses.vim'
Plugin 'paredit.vim'
Plugin 'venantius/vim-cljfmt'

call vundle#end()
filetype plugin indent on
