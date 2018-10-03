"----------------------------------------------------------------------"
" Ruby section
"----------------------------------------------------------------------"
au FileType ruby setl sw=2 sts=2 et
let ruby_no_expensive=1


"----------------------------------------------------------------------"
" Markdown section
"----------------------------------------------------------------------"
autocmd BufNewFile,BufReadPost *.md,*.taskpaper set filetype=markdown


"----------------------------------------------------------------------"
" Shell section
"----------------------------------------------------------------------"
if exists('$TMUX')
  set term=screen-256color
endif


"----------------------------------------------------------------------"
" JSON section
"----------------------------------------------------------------------"
let g:vim_json_syntax_conceal = 0


"----------------------------------------------------------------------"
" Clojure section
"----------------------------------------------------------------------"
let g:paredit_mode=0
autocmd FileType clojure let g:paredit_mode=1
autocmd FileType clojure nmap <buffer> cpP :Eval<cr>


"----------------------------------------------------------------------"
" Chess section
"----------------------------------------------------------------------"
au BufNewFile,BufRead *.pgn    setf pgn
