let g:vdebug_options = {
      \'server': '172.30.1.13',
      \'port': '9003',
      \'path_maps': {
        \ '/usr/local/bs/rts/': '/home/sam/Workspace/rts-server/'
      \}
    \}

" Vdebug
let g:vdebug_keymap = {
\    "run_to_cursor" : "<Enter>",
\    "step_over" : "<Down>",
\    "step_into" : "<Right>",
\    "step_out" : "<Left>",
\    "close" : "<F6>",
\    "detach" : "<F7>",
\    "set_breakpoint" : "<F10>",
\    'get_context': "<LocalLeader>c",
\    "eval_under_cursor" : "<LocalLeader>e"
\}

function! SetupDebug()
  let g:vdebug_options['path_maps'] = {'/usr/local/bs/rts/': call('projectroot#get', a:000)}
  " Hack to override vdebug options
  source ~/.local/share/nvim/plugged/vdebug/plugin/vdebug.vim
endfunction

" autocmd VimEnter * :call SetupDebug()
noremap <Leader>sd :call SetupDebug()<CR>
