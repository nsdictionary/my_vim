let g:rustfmt_autosave = 0
let g:rust_clip_command = 'pbcopy'

au FileType rust nnoremap <F5> :CargoRun<CR>
au FileType rust nnoremap <F6> :RustRun<CR>
au FileType rust nnoremap <F7> :RustFmt<CR>

"resolve conflict on tmux bind key (C-O)
inoremap <expr> <C-l><C-l> pumvisible() ? "\<C-l><C-l>" : "\<C-x><C-o>"

"racer
let g:racer_experimental_completer = 1
let g:racer_insert_paren = 1

augroup Racer
    autocmd!
    autocmd FileType rust nmap <buffer> gd         <Plug>(rust-def)
    autocmd FileType rust nmap <buffer> gs         <Plug>(rust-def-split)
    autocmd FileType rust nmap <buffer> gx         <Plug>(rust-def-vertical)
    autocmd FileType rust nmap <buffer> gt         <Plug>(rust-def-tab)
    autocmd FileType rust nmap <buffer> <leader>gd <Plug>(rust-doc)
augroup END

autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif
