let g:ctrlp_working_path_mode = 0

let g:ctrlp_map = '<c-f>'
map <leader>j :CtrlP<cr>
map <c-b> :CtrlPBuffer<cr>

let g:ctrlp_max_height = 20
let g:ctrlp_max_depth = 40
let g:ctrlp_custom_ignore = 'node_modules\|^\.DS_Store\|^\.git\|^\.coffee'

let g:ctrlp_user_command = {
 \ 'types': {
   \ 1: ['.git', 'cd %s && git ls-files --cached --exclude-standard --others'],
   \ 2: ['.hg', 'hg --cwd %s locate -I .'],
   \ },
 \ 'fallback': 'find %s -type f'
 \ }
