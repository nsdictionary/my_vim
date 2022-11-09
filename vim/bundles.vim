"----------------------------------------------------------------------"
" Vundle config
"----------------------------------------------------------------------"
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'mru.vim'
Plugin 'bufexplorer.zip'
Plugin 'vis'

call vundle#end()
filetype plugin indent on

"----------------------------------------------------------------------"
"" Vim-plug config
"----------------------------------------------------------------------"
call plug#begin()

Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tpope/vim-surround'
Plug 'preservim/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'mileszs/ack.vim'
Plug 'maxbrunsfeld/vim-yankstack'
Plug 'airblade/vim-gitgutter'
Plug 'kien/ctrlp.vim'
Plug 'tpope/vim-endwise'
Plug 'gorodinskiy/vim-coloresque'
Plug 'scrooloose/nerdcommenter'
Plug 'yggdroot/indentline'
Plug 'osyo-manga/vim-over'
Plug 'johngrib/vim-game-code-break'
Plug 'johngrib/vim-game-snake'
Plug 'scrooloose/syntastic'
Plug 'elzr/vim-json'
Plug 'ntpeters/vim-better-whitespace'
Plug 'FelikZ/ctrlp-py-matcher'
Plug 'pseewald/vim-anyfold'
Plug 'tpope/vim-repeat'
Plug 'yuttie/comfortable-motion.vim'
Plug 'benmills/vimux'
Plug 'itchyny/calendar.vim'
Plug 'nixon/vim-vmath'
Plug 'fisadev/dragvisuals.vim'
Plug 'johngrib/vim-f-hangul'
Plug 'majutsushi/tagbar'
Plug 'hesselbom/vim-hsftp'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'SirVer/ultisnips'
Plug 'dbakker/vim-projectroot'
Plug 'xiyaowong/nvim-cursorword'

" PHP
Plug 'stanangeloff/php.vim'
Plug '2072/PHP-Indenting-for-VIm'
Plug 'joonty/vdebug'

" Javascript
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'mattn/emmet-vim'
Plug 'w0rp/ale'
Plug 'leafgarland/typescript-vim'

" Wiki
Plug 'vimwiki/vimwiki'
Plug 'mhinz/vim-startify'

" Goyo
Plug 'junegunn/goyo.vim'
Plug 'amix/vim-zenroom2'

" Markdown
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
Plug 'itspriddle/vim-marked'

" Clojure
Plug 'guns/vim-clojure-static'
Plug 'tpope/vim-fireplace'
Plug 'kien/rainbow_parentheses.vim'
Plug 'venantius/vim-cljfmt'

"rust
Plug 'rust-lang/rust.vim'
Plug 'racer-rust/vim-racer'
Plug 'timonv/vim-cargo'
Plug 'mattn/webapi-vim' "Playgen

" Python
Plug 'klen/python-mode'

call plug#end()

