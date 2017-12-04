"----------------------------------------------------------------------"
" bufExplorer plugin
"----------------------------------------------------------------------"
let g:bufExplorerDefaultHelp=0
let g:bufExplorerShowRelativePath=1
let g:bufExplorerFindActive=1
let g:bufExplorerSortBy='name'
map <leader>o :BufExplorer<cr>


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
" CTRL-P
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
" surround.vim config
" Annotate strings with gettext http://amix.dk/blog/post/19678
"----------------------------------------------------------------------"
vmap Si S(i_<esc>f)
au FileType mako vmap Si S"i${ _(<esc>2f"a) }<esc>


"----------------------------------------------------------------------"
" Git gutter (Git diff)
"----------------------------------------------------------------------"
let g:gitgutter_enabled=0
nnoremap <silent> <leader>d :GitGutterToggle<cr>


"----------------------------------------------------------------------"
" NERDcommenter 
"----------------------------------------------------------------------"
let NERDSpaceDelims=1


"----------------------------------------------------------------------"
" indentline
"----------------------------------------------------------------------"
let g:indentLine_color_term = 239
let g:indentLine_color_gui = '#4a4a59'
let g:indentLine_char = '│'


"----------------------------------------------------------------------"
" syntastic 
"----------------------------------------------------------------------"
let g:syntastic_ruby_rubocop_exec = '/usr/local/opt/rbenv/shims/rubocop'
let g:syntastic_ruby_checkers = ['rubocop', 'mri']

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
let g:syntastic_mode_map = { 'mode': 'passive' }


"----------------------------------------------------------------------"
" anyfold
"----------------------------------------------------------------------"
autocmd Filetype ruby,python,javascript,markdown,php,css let b:anyfold_activate=1
let anyfold_fold_comments=0
let anyfold_fold_toplevel=0
set foldlevel=0
autocmd User anyfoldLoaded normal zR
