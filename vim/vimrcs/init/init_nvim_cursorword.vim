hi default CursorWord cterm=underline gui=underline

"disable highlighting for some filetypes
let g:cursorword_disable_filetypes = []

" disable highlighting at startup.
" run :CursorWordEnable or :CursorWordToggle to activate highlighting
let g:cursorword_disable_at_startup = v:true

" min width of word
let g:cursorword_min_width = 3

" max width of word
let g:cursorword_max_width = 50

map <leader>c :CursorWordToggle<CR>
