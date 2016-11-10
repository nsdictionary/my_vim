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
" EasyMotion
"----------------------------------------------------------------------"
map <Leader> <Plug>(easymotion-prefix)

" Move to line
map <Leader>L <Plug>(easymotion-bd-jk)
nmap <Leader>L <Plug>(easymotion-overwin-line)


"----------------------------------------------------------------------"
" youcompleteme
"----------------------------------------------------------------------"
let g:EclimCompletionMethod = 'omnifunc'

"To avoid conflict snippets
let g:ycm_key_list_select_completion = ['<C-j>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-k>', '<Up>']
let g:ycm_autoclose_preview_window_after_completion = 1

"nnoremap <leader>g :YcmCompleter GoTo<CR>
"nnoremap <leader>gg :YcmCompleter GoToImprecise<CR>
"nnoremap <leader>d :YcmCompleter GoToDeclaration<CR>
"nnoremap <leader>t :YcmCompleter GetType<CR>
"nnoremap <leader>p :YcmCompleter GetParent<CR>



"----------------------------------------------------------------------"
" vim-multicursor  
"----------------------------------------------------------------------"
let g:multicursor_quit = "\<Esc>"
nnoremap <Leader>mp :call MultiCursorPlaceCursor()<cr>
nnoremap <Leader>mr :call MultiCursorRemoveCursors()<cr>
nnoremap <Leader>mm :call MultiCursorManual()<cr>
xnoremap <Leader>mv :call MultiCursorVisual()<cr>
nnoremap <Leader>ms :call MultiCursorSearch('')<cr>
nnoremap <leader>mw :<c-u>call MultiCursorSearch('<c-r><c-w>')<cr>
xnoremap <leader>mb "*y<Esc>:call MultiCursorSearch('<c-r>=substitute(escape(@*, '\/.*$^~[]'), "\n", '\\n', "g")<cr>')<cr>

highlight MultiCursor cterm=NONE ctermfg=red ctermbg=green
"let g:multicursor_debug = 1


"----------------------------------------------------------------------"
" NERDcommenter 
"----------------------------------------------------------------------"
let NERDSpaceDelims=1
