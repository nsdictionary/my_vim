autocmd Filetype ruby,php,python,javascript,php,css,json,yaml AnyFoldActivate
let anyfold_fold_comments=0
let anyfold_fold_toplevel=0
set foldlevel=0
autocmd User anyfoldLoaded normal zR
