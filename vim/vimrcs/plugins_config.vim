"----------------------------------------------------------------------"
" init plugin configurations
"----------------------------------------------------------------------"
source ~\AppData\Local\nvim\.vim\vimrcs\init\init_buf_explorer.vim
source ~\AppData\Local\nvim\.vim\vimrcs\init\init_ctrlp.vim
source ~\AppData\Local\nvim\.vim\vimrcs\init\init_nerd_tree.vim
source ~\AppData\Local\nvim\.vim\vimrcs\init\init_indentline.vim
source ~\AppData\Local\nvim\.vim\vimrcs\init\init_syntastic.vim
source ~\AppData\Local\nvim\.vim\vimrcs\init\init_anyfold.vim
source ~\AppData\Local\nvim\.vim\vimrcs\init\init_markdown.vim
"source ~\AppData\Local\nvim\.vim\vimrcs\init\init_vimux.vim
source ~\AppData\Local\nvim\.vim\vimrcs\init\init_vimwiki.vim
source ~\AppData\Local\nvim\.vim\vimrcs\init\init_startify.vim
source ~\AppData\Local\nvim\.vim\vimrcs\init\init_js.vim
"source ~\AppData\Local\nvim\.vim\vimrcs\init\init_rust.vim
"source ~\AppData\Local\nvim\.vim\vimrcs\init\init_vdebug.vim
source ~\AppData\Local\nvim\.vim\vimrcs\init\init_ultisnips.vim
source ~\AppData\Local\nvim\.vim\vimrcs\init\init_nvim_cursorword.vim

if !empty($DISPLAY)
  source ~\AppData\Local\nvim\.vim\vimrcs\init\init_coc.vim
endif


"----------------------------------------------------------------------"
" Vim airline
"----------------------------------------------------------------------"
let g:airline_powerline_fonts = 1
set guifont=DejaVu\ Sans\ Mono\ for\ Powerline:h14


"----------------------------------------------------------------------"
" Projectroot
"----------------------------------------------------------------------"
let g:rootmarkers = ['.projectroot', 'docker-compose.yml', '.git', '.hg', '.svn', '.bzr','_darcs','build.xml']


"----------------------------------------------------------------------"
" Vimroom
"----------------------------------------------------------------------"
let g:goyo_width=100
let g:goyo_margin_top = 2
let g:goyo_margin_bottom = 2
nnoremap <silent> <leader>z :Goyo<cr>


"----------------------------------------------------------------------"
" MRU plugin
"----------------------------------------------------------------------"
let MRU_Max_Entries = 400
map <leader>f :MRU<CR>


"----------------------------------------------------------------------"
" YankStack
"----------------------------------------------------------------------"
nmap <leader>p <Plug>yankstack_substitute_older_paste
nmap <leader>P <Plug>yankstack_substitute_newer_paste


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
" comfortable-motion
"----------------------------------------------------------------------"
if !has('vscode')
  let g:comfortable_motion_no_default_key_mappings = 1
  nnoremap <silent> <C-d> :call comfortable_motion#flick(100)<CR>
  nnoremap <silent> <C-u> :call comfortable_motion#flick(-100)<CR>
endif


"----------------------------------------------------------------------"
" RainbowParentheses
"----------------------------------------------------------------------"
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces


"----------------------------------------------------------------------"
" vim-better-whitespace
"----------------------------------------------------------------------"
highlight ExtraWhitespace ctermbg=red
let g:better_whitespace_enabled = 1
let g:strip_whitespace_on_save = 0
let g:better_whitespace_filetypes_blacklist=['calendar', 'diff', 'gitcommit', 'help']


"----------------------------------------------------------------------"
" calendar
"----------------------------------------------------------------------"
nmap <Leader><Leader>c :Calendar -view=year -split=vertical -width=27<CR>
"nmap <Leader><Leader>c :Calendar -view=year -split=horizontal -position=below -height=12<CR>
"nmap <Leader><Leader>c :Calendar -view=clock<CR>
let g:calendar_google_calendar = 1
let g:calendar_google_task = 1


"----------------------------------------------------------------------"
" TagBar
"----------------------------------------------------------------------"
nmap <F4> :TagbarToggle<CR>
let g:tagbar_left=1


"----------------------------------------------------------------------"
" vim-vmath
"----------------------------------------------------------------------"
vmap <expr>  ++  VMATH_YankAndAnalyse()
nmap         ++  vip++


"----------------------------------------------------------------------"
" dragvisuals
"----------------------------------------------------------------------"
vmap  <expr>  <LEFT>   DVB_Drag('left')
vmap  <expr>  <RIGHT>  DVB_Drag('right')
vmap  <expr>  <DOWN>   DVB_Drag('down')
vmap  <expr>  <UP>     DVB_Drag('up')
vmap  <expr>  F        DVB_Duplicate()
