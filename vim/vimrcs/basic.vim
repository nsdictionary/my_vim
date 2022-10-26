"----------------------------------------------------------------------"
" General
"----------------------------------------------------------------------"

" Sets how many lines of history VIM has to remember
set history=500

" Enable filetype plugins
filetype plugin on
filetype indent on

" Set to auto read when a file is changed from the outside
set autoread

" With a map leader it's possible to do extra key combinations
" like <leader>w saves the current file
let mapleader = ","
let g:mapleader = ","
let maplocalleader = "\\"

" Fast saving
nmap <leader>w :w!<cr>
:command WQ wq
:command Wq wq
:command W w
:command Q q
:command Qa qa

"set relativenumber
set number
set showmatch
set hlsearch
set ic
" nnoremap <CR> :nohlsearch<CR><CR>
nnoremap <esc><esc> :silent! nohls<CR>

" improving vim rendering
set ttyfast
set lazyredraw
" set synmaxcol=128
set nocursorcolumn
set nocursorline
set norelativenumber
set re=1
set conceallevel=0

" CSS autocompletion
set omnifunc=syntaxcomplete#Complete

"Shortcut to rapidly toggle `set list`
nmap <leader>li :set list!<CR>

"Use the same symbols as TextMate for tabstops and EOLs
set listchars=tab:▸\ ,eol:¬

"Invisible character colors
highlight NonText guifg=#4a4a59
highlight SpecialKey guifg=#4a4a59

"load bundles
source ~/.vim/bundles.vim

" Wrapped lines goes down/up to next row, rather than next line in file.
nnoremap j gj
nnoremap k gk

" Resize split windows
nnoremap <silent> - :exe "resize " . (winheight(0) * 3/2)<CR>
nnoremap <silent> _ :exe "resize " . (winheight(0) * 2/3)<CR>
nnoremap <silent> 0 :vertical res+5<CR>
nnoremap <silent> 9 :vertical res-5<CR>


"----------------------------------------------------------------------"
" Mimic Emacs key binding
"----------------------------------------------------------------------"
" Map scroll key bind
nnoremap <C-p> <C-y>
nnoremap <C-n> <C-e>

" Map Ctrl-A -> Start of line, Ctrl-E -> End of line
map <C-E> $
map <C-A> ^
noremap <c-i> <c-a>
inoremap <C-e> <Esc>A
inoremap <C-a> <Esc>I
vnoremap <C-a> ^
vnoremap <C-e> $

" Emacs Line Editing in Insert Mode Only
inoremap <C-K> <Esc>lDa
inoremap <C-U> <Esc>d0xi
inoremap <C-Y> <Esc>pa
inoremap <C-P> <Up>
inoremap <C-N> <Down>
inoremap <C-B> <Left>
inoremap <C-F> <Right>
inoremap <C-X><C-S> <Esc>:w<CR>a

" Edit
inoremap <A-x> <Esc>:
inoremap <A-f> <Esc>lwi
inoremap <A-b> <Esc>bi
inoremap <A-S-f> <Esc>lWi
inoremap <A-S-b> <Esc>Bi


"----------------------------------------------------------------------"
" Files, backups and undo
"----------------------------------------------------------------------"
" Turn backup off, since most stuff is in SVN, git et.c anyway...
set nobackup
set nowb
set noswapfile


"----------------------------------------------------------------------"
" Moving around, tabs, windows and buffers
"----------------------------------------------------------------------"
" Map <Space> to / (search) and Ctrl-<Space> to ? (backwards search)
map <space> /
map <c-space> ?
map ? :<C-u>OverCommandLine<cr>

" Smart way to move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Close the current buffer
map <leader>bd :Bclose<cr>:tabclose<cr>gT

" Close all the buffers
map <leader>ba :bufdo bd<cr>

map <F2> :bprevious<CR>
map <F3> :bnext<CR>

" Useful mappings for managing tabs
map <leader>tn :tabnew<cr>
map <leader>to :tabonly<cr>
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove

" Let 'tl' toggle between this and the last accessed tab
let g:lasttab = 1
nmap <Leader>tl :exe "tabn ".g:lasttab<CR>
au TabLeave * let g:lasttab = tabpagenr()

" Opens a new tab with the current buffer's path
" Super useful when editing files in the same directory
map <leader>te :tabedit <c-r>=expand("%:p:h")<cr>/

" Specify the behavior when switching between buffers
try
  set switchbuf=useopen,usetab,newtab
  set stal=2
catch
endtry

" Return to last edit position when opening files (You want this!)
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif


"----------------------------------------------------------------------"
" Status line
"----------------------------------------------------------------------"
" Always show the status line
set laststatus=2

" Format the status line
set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l\ \ Column:\ %c


"----------------------------------------------------------------------"
" Colors and Fonts
"----------------------------------------------------------------------"
syntax on

if has('gui_running')
  color luna
  set guioptions=
else
  color luna-term
endif

" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8

" Use Unix as the standard file type
set ffs=unix,dos,mac

" Set split window postion
set splitright
set splitbelow

" Make the 81st column stand out
highlight ColorColumn ctermbg=green ctermfg=black
call matchadd('ColorColumn', '\%81v', 100)


"----------------------------------------------------------------------"
" Text, tab and indent related
"----------------------------------------------------------------------"
" Use spaces instead of tabs
set expandtab

" Be smart when using tabs ;)
set smarttab

" 1 tab == 4 spaces
set shiftwidth=2
set tabstop=2

" Linebreak on 500 characters
set lbr
set tw=500

set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines

set clipboard=unnamedplus " This enable use system clipboard. You sholud upgrade vim before use


"----------------------------------------------------------------------"
" Helper functions
"----------------------------------------------------------------------"
" Don't close window, when deleting a buffer
command! Bclose call <SID>BufcloseCloseIt()
function! <SID>BufcloseCloseIt()
    let l:currentBufNum = bufnr("%")
    let l:alternateBufNum = bufnr("#")

    if buflisted(l:alternateBufNum)
        buffer #
    else
        bnext
    endif

    if bufnr("%") == l:currentBufNum
        new
    endif

    if buflisted(l:currentBufNum)
        execute("bdelete! ".l:currentBufNum)
    endif
endfunction
