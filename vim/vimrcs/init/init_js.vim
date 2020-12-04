"----------------------------------------------------------------------"
" ale
"----------------------------------------------------------------------"
let g:ale_sign_error = '●' " Less aggressive than the default '>>'
let g:ale_sign_warning = '.'
let g:ale_lint_on_enter = 0 " Less distracting when opening a new file
let g:ale_lint_on_text_changed = 'never'

" disable ale on svelte
let g:ale_pattern_options = {
      \'\.svelte$': {'ale_enabled': 0},
      \'\.ts$': {'ale_enabled': 0}
      \}

"----------------------------------------------------------------------"
" emmet
"----------------------------------------------------------------------"
" let g:user_emmet_leader_key='<Tab>'
let g:user_emmet_settings = {
  \  'javascript' : {
    \      'extends' : 'jsx',
    \  },
  \}
