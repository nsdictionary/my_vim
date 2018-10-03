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
" let g:indentLine_setConceal = 0
" let g:indentLine_fileTypeExclude = ['json']
let g:indentLine_fileType = ['ruby', 'python', 'bash', 'javascript', 'clojure', 'html', 'elm', 'lisp']


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
let g:vim_markdown_auto_insert_bullets = 0
map <Leader>md :MarkedOpen<CR>


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

" Sentbe-rails specific
" map <Leader>dc :call VimuxRunCommand("docker exec -it restful rails c")<CR>
" map <Leader>dl :call VimuxRunCommand("docker logs -f restful")<CR>
" map <Leader>du :call VimuxRunCommand("cd ~/Workspace/sentbe-rails-restful && docker-compose up -d app")<CR>
" map <Leader>dr :call VimuxRunCommand("docker stop restful && docker rm restful && cd ~/Workspace/sentbe-rails-restful && docker-compose up -d app && docker logs -f restful")<CR>


"----------------------------------------------------------------------"
" vimwiki
"----------------------------------------------------------------------"
let g:vimwiki_list = [
    \{
    \   'path': '~/Dropbox/wiki',
    \   'ext' : '.md',
    \   'diary_rel_path': 'diary',
    \   'path_html': '~/Dropbox/wiki/site_html/',
    \   'template_path': '~/Dropbox/wiki/templates',
    \   'template_default': 'default',
    \   'template_ext': '.html',
    \},
    \{
    \   'path': '~/Dropbox/wiki/blog/_wiki',
    \   'ext' : '.md',
    \   'diary_rel_path': '.',
    \},
\]
let g:vimwiki_conceallevel = 0

command! WikiIndex :VimwikiIndex
nmap <Leader>ww <Plug>VimwikiIndex
nmap <Leader>wt <Plug>VimwikiTabIndex
nmap <Leader>ws <Plug>VimwikiUISelect
nmap <Leader>wi <Plug>VimwikiDiaryIndex
nmap <Leader>w<Leader>w <Plug>VimwikiMakeDiaryNote
nmap <Leader>w<Leader>t <Plug>VimwikiTabMakeDiaryNote
nmap <Leader>w<Leader>y <Plug>VimwikiMakeYesterdayDiaryNote
nmap <Leader>wh <Plug>Vimwiki2HTML
nmap <Leader>whh <Plug>Vimwiki2HTMLBrowse
nmap <LocalLeader>wt :VimwikiTable<CR>
nmap <LocalLeader>ws :VimwikiSplitLink<CR>
nmap <LocalLeader>wv :VimwikiVSplitLink<CR>
" nmap <> <Plug>VimwikiFollowLink
" nmap <> <Plug>VimwikiGoBackLink

function! LastModified()
  if g:md_modify_disabled
    return
  endif
  if &modified
    " echo('markdown updated time modified')
    let save_cursor = getpos(".")
    let n = min([10, line("$")])

    exe 'keepjumps 1,' . n . 's#^\(.\{,10}updated\s*: \).*#\1' .
          \ strftime('%Y-%m-%d %H:%M:%S +0900') . '#e'
    call histdel('search', -1)
    call setpos('.', save_cursor)
  endif
endfun
function! NewTemplate()

  let l:wiki_directory = v:false

  for wiki in g:vimwiki_list
    if expand('%:p:h') == expand(wiki.path)
      let l:wiki_directory = v:true
      break
    endif
  endfor

  if !l:wiki_directory
    return
  endif

  if line("$") > 1
    return
  endif

  let l:template = []
  call add(l:template, '---')
  call add(l:template, 'layout  : wiki')
  call add(l:template, 'title   : ')
  call add(l:template, 'summary : ')
  call add(l:template, 'date    : ' . strftime('%Y-%m-%d %H:%M:%S +0900'))
  call add(l:template, 'updated : ' . strftime('%Y-%m-%d %H:%M:%S +0900'))
  call add(l:template, 'tags    : ')
  call add(l:template, 'toc     : true')
  call add(l:template, 'public  : true')
  call add(l:template, 'parent  : ')
  call add(l:template, 'latex   : false')
  call add(l:template, '---')
  call add(l:template, '* TOC')
  call add(l:template, '{:toc}')
  call add(l:template, '')
  call add(l:template, '# ')
  call setline(1, l:template)
  execute 'normal! G'
  execute 'normal! $'

  echom 'new wiki page has created'
endfunction
augroup vimwikiauto
  autocmd BufWritePre *wiki/*.md keepjumps call LastModified()
  autocmd BufRead,BufNewFile *wiki/*.md call NewTemplate()
augroup END

let g:md_modify_disabled = 0


"----------------------------------------------------------------------"
" Startify
"----------------------------------------------------------------------"
nmap <Leader>s :Startify<CR>
nmap <Leader><Leader>s :SSave<CR>
nmap <Leader><Leader>d :SDelete<CR>

let g:startify_custom_header = ['']
let g:startify_update_oldfiles = 1
let g:startify_change_to_vcs_root = 1
let g:startify_session_sort = 1

let g:startify_commands = [
  \ ':help startify',
  \ ]

let g:startify_list_order = [
  \ ['    Sessions'],
  \'sessions',
  \ ['    Most Recently Used files'],
  \'files',
  \'bookmarks',
  \ ['    Commands'],
  \'commands'
  \]


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
" Elm
"----------------------------------------------------------------------"
let g:elm_setup_keybindings = 0
let g:elm_format_autosave = 1
nnoremap <LocalLeader>ef :ElmFormat<CR>


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
