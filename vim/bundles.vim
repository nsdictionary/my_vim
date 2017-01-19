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

Plugin 'junegunn/goyo.vim'
Plugin 'amix/vim-zenroom2'
Plugin 'junegunn/limelight.vim'

Plugin 'tpope/vim-fugitive'

call vundle#end()
filetype plugin indent on
