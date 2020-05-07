nmap <Leader>s :Startify<CR>
nmap <Leader><Leader>s :SSave<CR>
nmap <Leader><Leader>d :SDelete<CR>

let g:startify_custom_header = [
  \ ';; Happy hacking, sam - Vim ♥ you!',
  \ ';; 행동을 통해 자신의 꿈에 실천의 기회를 주지 않는다면 영원히 기회는 없습니다.'
  \ ]

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
