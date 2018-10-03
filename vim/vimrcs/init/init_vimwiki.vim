let g:vimwiki_list = [
    \{
    \   'path': '~/Dropbox/wiki',
    \   'ext' : '.md',
    \   'diary_rel_path': 'diary',
    \   'path_html': '~/Dropbox/wiki/site_html/',
    \   'template_path': '~/Dropbox/wiki/templates',
    \   'template_default': 'default',
    \   'template_ext': '.html',
    \},
    \{
    \   'path': '~/Dropbox/wiki/blog/_wiki',
    \   'ext' : '.md',
    \   'diary_rel_path': '.',
    \},
\]
let g:vimwiki_conceallevel = 0

command! WikiIndex :VimwikiIndex
nmap <Leader>ww <Plug>VimwikiIndex
nmap <Leader>wt <Plug>VimwikiTabIndex
nmap <Leader>ws <Plug>VimwikiUISelect
nmap <Leader>wi <Plug>VimwikiDiaryIndex
nmap <Leader>w<Leader>w <Plug>VimwikiMakeDiaryNote
nmap <Leader>w<Leader>t <Plug>VimwikiTabMakeDiaryNote
nmap <Leader>w<Leader>y <Plug>VimwikiMakeYesterdayDiaryNote
nmap <Leader>wh <Plug>Vimwiki2HTML
nmap <Leader>whh <Plug>Vimwiki2HTMLBrowse
nmap <LocalLeader>wt :VimwikiTable<CR>
nmap <LocalLeader>ws :VimwikiSplitLink<CR>
nmap <LocalLeader>wv :VimwikiVSplitLink<CR>
" nmap <> <Plug>VimwikiFollowLink
" nmap <> <Plug>VimwikiGoBackLink

function! LastModified()
  if g:md_modify_disabled
    return
  endif
  if &modified
    " echo('markdown updated time modified')
    let save_cursor = getpos(".")
    let n = min([10, line("$")])

    exe 'keepjumps 1,' . n . 's#^\(.\{,10}updated\s*: \).*#\1' .
          \ strftime('%Y-%m-%d %H:%M:%S +0900') . '#e'
    call histdel('search', -1)
    call setpos('.', save_cursor)
  endif
endfun
function! NewTemplate()

  let l:wiki_directory = v:false

  for wiki in g:vimwiki_list
    if expand('%:p:h') == expand(wiki.path)
      let l:wiki_directory = v:true
      break
    endif
  endfor

  if !l:wiki_directory
    return
  endif

  if line("$") > 1
    return
  endif

  let l:template = []
  call add(l:template, '---')
  call add(l:template, 'layout  : wiki')
  call add(l:template, 'title   : ')
  call add(l:template, 'summary : ')
  call add(l:template, 'date    : ' . strftime('%Y-%m-%d %H:%M:%S +0900'))
  call add(l:template, 'updated : ' . strftime('%Y-%m-%d %H:%M:%S +0900'))
  call add(l:template, 'tags    : ')
  call add(l:template, 'toc     : true')
  call add(l:template, 'public  : true')
  call add(l:template, 'parent  : ')
  call add(l:template, 'latex   : false')
  call add(l:template, '---')
  call add(l:template, '* TOC')
  call add(l:template, '{:toc}')
  call add(l:template, '')
  call add(l:template, '# ')
  call setline(1, l:template)
  execute 'normal! G'
  execute 'normal! $'

  echom 'new wiki page has created'
endfunction
augroup vimwikiauto
  autocmd BufWritePre *wiki/*.md keepjumps call LastModified()
  autocmd BufRead,BufNewFile *wiki/*.md call NewTemplate()
augroup END

let g:md_modify_disabled = 0
