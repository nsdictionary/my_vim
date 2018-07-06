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
nmap <M-p> <Plug>yankstack_substitute_older_paste
nmap <M-P> <Plug>yankstack_substitute_newer_paste


"----------------------------------------------------------------------"
" CTRL-P
"----------------------------------------------------------------------"
let g:ctrlp_working_path_mode = 0

let g:ctrlp_map = '<c-f>'
map <leader>j :CtrlP<cr>
map <c-b> :CtrlPBuffer<cr>

let g:ctrlp_max_height = 20
let g:ctrlp_custom_ignore = 'node_modules\|^\.DS_Store\|^\.git\|^\.coffee'

let g:ctrlp_user_command = {
 \ 'types': {
   \ 1: ['.git', 'cd %s && git ls-files --cached --exclude-standard --others'],
   \ 2: ['.hg', 'hg --cwd %s locate -I .'],
   \ },
 \ 'fallback': 'find %s -type f'
 \ }

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
autocmd Filetype ruby,python,javascript,php,css,json,yaml let b:anyfold_activate=1
let anyfold_fold_comments=0
let anyfold_fold_toplevel=0
set foldlevel=0
autocmd User anyfoldLoaded normal zR


"----------------------------------------------------------------------"
" vim-markdown
"----------------------------------------------------------------------"
let g:vim_markdown_override_foldtext = 0
let g:vim_markdown_folding_level = 1
let g:vim_markdown_math = 1
let g:vim_markdown_frontmatter = 1
let g:vim_markdown_json_frontmatter = 1
let g:vim_markdown_new_list_item_indent = 0
let g:vim_markdown_conceal = 0


"----------------------------------------------------------------------"
" comfortable-motion
"----------------------------------------------------------------------"
let g:comfortable_motion_no_default_key_mappings = 1
nnoremap <silent> <C-d> :call comfortable_motion#flick(100)<CR>
nnoremap <silent> <C-u> :call comfortable_motion#flick(-100)<CR>


"----------------------------------------------------------------------"
" vimux
"----------------------------------------------------------------------"
" Prompt for a command to run
map <Leader>vp :VimuxPromptCommand<CR>
map <Leader>vl :VimuxRunLastCommand<CR>
map <Leader>vi :VimuxInspectRunner<CR>
map <Leader>vz :VimuxZoomRunner<CR>
map <Leader>vc :VimuxCloseRunner<CR>

"sentbe-rails specific
map <Leader>dc :call VimuxRunCommand("docker exec -it restful rails c")<CR>
map <Leader>dl :call VimuxRunCommand("docker logs -f restful")<CR>
map <Leader>du :call VimuxRunCommand("cd ~/Workspace/sentbe-rails-restful && docker-compose up -d app")<CR>
map <Leader>dr :call VimuxRunCommand("docker stop restful && docker rm restful && cd ~/Workspace/sentbe-rails-restful && docker-compose up -d app && docker logs -f restful")<CR>
