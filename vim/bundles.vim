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
Plugin 'johngrib/vim-game-snake'
Plugin 'scrooloose/syntastic'
Plugin 'elzr/vim-json'
Plugin 'ntpeters/vim-better-whitespace'
Plugin 'FelikZ/ctrlp-py-matcher'
Plugin 'pseewald/vim-anyfold'
Plugin 'tpope/vim-repeat'
Plugin 'yuttie/comfortable-motion.vim'
Plugin 'benmills/vimux'
Plugin 'itchyny/calendar.vim'
Plugin 'nixon/vim-vmath'
Plugin 'vis'
Plugin 'fisadev/dragvisuals.vim'
Plugin 'johngrib/vim-f-hangul'
Plugin 'majutsushi/tagbar'
Plugin 'hesselbom/vim-hsftp'

" PHP
Plugin 'stanangeloff/php.vim'
Plugin '2072/PHP-Indenting-for-VIm'
Plugin 'joonty/vdebug'

" Javascript
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'mattn/emmet-vim'
Plugin 'w0rp/ale'
Plugin 'evanleck/vim-svelte'
Plugin 'leafgarland/typescript-vim'

" Wiki
Plugin 'vimwiki/vimwiki'
Plugin 'mhinz/vim-startify'

" Goyo
Plugin 'junegunn/goyo.vim'
Plugin 'amix/vim-zenroom2'

" Markdown
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'itspriddle/vim-marked'

" Clojure
Plugin 'guns/vim-clojure-static'
Plugin 'tpope/vim-fireplace'
Plugin 'kien/rainbow_parentheses.vim'
Plugin 'paredit.vim'
Plugin 'venantius/vim-cljfmt'

"rust
Plugin 'rust-lang/rust.vim'
Plugin 'racer-rust/vim-racer'
Plugin 'timonv/vim-cargo'
Plugin 'mattn/webapi-vim' "Playgen

" Elm
" Plugin 'elmcast/elm-vim'

" Chess
Plugin 'pgn.vim'
Plugin 'Chess-files-.pgn-extension'

" Python
Plugin 'klen/python-mode'

" golang
" Plugin 'fatih/vim-go'

call vundle#end()
filetype plugin indent on
