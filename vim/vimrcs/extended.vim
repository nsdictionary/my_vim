"----------------------------------------------------------------------"
" Fast editing and reloading of vimrc configs
"----------------------------------------------------------------------"
map <leader>e :e! ~/.vim/vimrcs/basic.vim<cr>
autocmd! bufwritepost vimrc source ~\AppData\Local\nvim\.vim\vimrcs\basic.vim


"----------------------------------------------------------------------"
" => Command mode related
"----------------------------------------------------------------------"
" Bash like keys for the command line
cnoremap <C-A>		<Home>
cnoremap <C-E>		<End>
cnoremap <C-K>		<C-U>
cnoremap <C-P> <Up>
cnoremap <C-N> <Down>


"----------------------------------------------------------------------"
" Parenthesis/bracket
"----------------------------------------------------------------------"
vnoremap $1 <esc>`>a)<esc>`<i(<esc>
vnoremap $2 <esc>`>a]<esc>`<i[<esc>
vnoremap $3 <esc>`>a}<esc>`<i{<esc>
vnoremap $$ <esc>`>a"<esc>`<i"<esc>
vnoremap $q <esc>`>a'<esc>`<i'<esc>


"----------------------------------------------------------------------"
" General abbreviations
"----------------------------------------------------------------------"
iab xdate <c-r>=strftime("%y/%m/%d %H:%M:%S")<cr>


"----------------------------------------------------------------------"
" Functions
"----------------------------------------------------------------------"
" http://vim.wikia.com/wiki/Copy_filename_to_clipboard
if has('win32')
    command! GetFileName :let @*=substitute(expand("%"), "/", "\\", "g")
    command! GetFileAddress :let @*=substitute(expand("%:p"), "/", "\\", "g")<CR>
else
    command! GetFileName :let @+=expand('%')
    command! GetFileAddress :let @+=expand('%:p')
endif

" 현재 편집중인 파일 경로로 pwd 를 변경한다
command! Ncd :cd %:p:h

" Remove tailing whitespace
fun! TrimWhitespace()
    let l:save = winsaveview()
    keeppatterns %s/\s\+$//e
    call winrestview(l:save)
endfun
noremap <Leader>t :call TrimWhitespace()<CR>
