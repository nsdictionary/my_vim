let g:vdebug_options = {
      \'server': 'localhost',
      \'port': '9001',
      \'path_maps': {
        \ '/usr/local/bs/rts/': '/Users/sam/Workspace/fairstudios/rts-server/rts/'
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
