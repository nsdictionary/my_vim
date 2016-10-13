"----------------------------------------------------------------------"
" Rainbow Parentheses
"----------------------------------------------------------------------"
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces


"----------------------------------------------------------------------"
" Line indent
"----------------------------------------------------------------------"
"let g:indentLine_leadingSpaceChar = '.'
"let g:indentLine_leadingSpaceEnabled = 1
"let g:indentLine_char = '┊'

"Vim
let g:indentLine_color_term = 239

"GVim
let g:indentLine_color_gui = 'Grey30'

"none X terminal
let g:indentLine_color_tty_light = 7 " (default: 4)
let g:indentLine_color_dark = 1 " (default: 2)


"----------------------------------------------------------------------"
" Vimux
"----------------------------------------------------------------------"
let g:VimuxHeight = "30"
let g:VimuxOrientation = 'v'
let g:VimuxUseNearestPane = 0

nmap <leader>vp :VimuxPromptCommand<cr>
nmap <leader>vl :VimuxRunLastCommand<cr>
nmap <leader>vq :VimuxCloseRunner<cr>
nmap <leader>vx :VimuxInterruptRunner<cr>

"nmap <leader>vg :call VimuxRunCommand("git status")<CR>


"----------------------------------------------------------------------"
" Vim airline
"----------------------------------------------------------------------"
let g:airline_powerline_fonts = 1
set guifont=DejaVu\ Sans\ Mono\ for\ Powerline:h14


"----------------------------------------------------------------------"
" MRU plugin
"----------------------------------------------------------------------"
let MRU_Max_Entries = 400
map <leader>f :MRU<CR>


"----------------------------------------------------------------------"
" YankStack
"----------------------------------------------------------------------"
nmap <c-p> <Plug>yankstack_substitute_older_paste
nmap <c-P> <Plug>yankstack_substitute_newer_paste


"----------------------------------------------------------------------"
" => CTRL-P
"----------------------------------------------------------------------"
let g:ctrlp_working_path_mode = 0

let g:ctrlp_map = '<c-f>'
map <leader>j :CtrlP<cr>
map <c-b> :CtrlPBuffer<cr>

let g:ctrlp_max_height = 20
let g:ctrlp_custom_ignore = 'node_modules\|^\.DS_Store\|^\.git\|^\.coffee'


"----------------------------------------------------------------------"
" Nerd Tree
"----------------------------------------------------------------------"
let g:NERDTreeWinPos = "right"
let NERDTreeShowHidden=0
let NERDTreeIgnore = ['\.pyc$', '__pycache__']
let g:NERDTreeWinSize=35
map <leader>nn :NERDTreeToggle<cr>
map <leader>nb :NERDTreeFromBookmark
map <leader>nf :NERDTreeFind<cr>


"----------------------------------------------------------------------"
" vim-multiple-cursors
"----------------------------------------------------------------------"
let g:multi_cursor_next_key="\<C-s>"


"----------------------------------------------------------------------"
" surround.vim config
" Annotate strings with gettext http://amix.dk/blog/post/19678
"----------------------------------------------------------------------"
vmap Si S(i_<esc>f)
au FileType mako vmap Si S"i${ _(<esc>2f"a) }<esc>


"----------------------------------------------------------------------"
" Vim-go
"----------------------------------------------------------------------"
let g:go_fmt_command = "goimports"


"----------------------------------------------------------------------"
"  Syntastic (syntax checker)
"----------------------------------------------------------------------"
" Python
let g:syntastic_python_checkers=['pyflakes']

" Javascript
let g:syntastic_javascript_checkers = ['jshint']

" Go
let g:syntastic_auto_loc_list = 1
let g:syntastic_go_checkers = ['go', 'golint', 'errcheck']

" Custom CoffeeScript SyntasticCheck
func! SyntasticCheckCoffeescript()
    let l:filename = substitute(expand("%:p"), '\(\w\+\)\.coffee', '.coffee.\1.js', '')
    execute "tabedit " . l:filename
    execute "SyntasticCheck"
    execute "Errors"
endfunc
nnoremap <silent> <leader>c :call SyntasticCheckCoffeescript()<cr>


"----------------------------------------------------------------------"
" Git gutter (Git diff)
"----------------------------------------------------------------------"
let g:gitgutter_enabled=0
nnoremap <silent> <leader>d :GitGutterToggle<cr>