" use <c-space>for trigger completion
inoremap <silent><expr> <c-space> coc#refresh()

" map ctrl + j and ctrl + k to traverse up and down the coc completion list
inoremap <expr> <C-j> coc#pum#visible() ? coc#pum#next(1) : "\<C-n>"
inoremap <expr> <C-k> coc#pum#visible() ? coc#pum#prev(1) : "\<C-p>"

" Use <cr> to confirm completion
inoremap <silent><expr> <cr> coc#pum#visible() && coc#pum#info()['index'] != -1 ? coc#pum#confirm() : "\<C-g>u\<CR>"


