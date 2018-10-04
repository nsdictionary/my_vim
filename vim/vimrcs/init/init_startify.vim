nmap <Leader>s :Startify<CR>
nmap <Leader><Leader>s :SSave<CR>
nmap <Leader><Leader>d :SDelete<CR>

let g:startify_custom_header = [';; Happy hacking, sam - Vim ♥ you!']
let g:startify_update_oldfiles = 1
let g:startify_change_to_vcs_root = 1
let g:startify_session_sort = 1

let g:startify_commands = [
  \ ':help startify',
  \ ]

let g:startify_list_order = [
  \ ['    Sessions'],
  \'sessions',
  \ ['    Most Recently Used files'],
  \'files',
  \'bookmarks',
  \ ['    Commands'],
  \'commands'
  \]
