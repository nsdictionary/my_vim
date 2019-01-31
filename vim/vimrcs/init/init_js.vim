"----------------------------------------------------------------------"
" ale
"----------------------------------------------------------------------"
let g:ale_sign_error = '●' " Less aggressive than the default '>>'
let g:ale_sign_warning = '.'
let g:ale_lint_on_enter = 0 " Less distracting when opening a new file

"----------------------------------------------------------------------"
" emmet
"----------------------------------------------------------------------"
let g:user_emmet_leader_key='<Tab>'
let g:user_emmet_settings = {
  \  'javascript' : {
    \      'extends' : 'jsx',
    \  },
  \}
