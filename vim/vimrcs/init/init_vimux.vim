" Prompt for a command to run
map <Leader>vp :VimuxPromptCommand<CR>
map <Leader>vl :VimuxRunLastCommand<CR>
map <Leader>vi :VimuxInspectRunner<CR>
map <Leader>vz :VimuxZoomRunner<CR>
map <Leader>vc :VimuxCloseRunner<CR>

" Sentbe-rails specific
" map <Leader>dc :call VimuxRunCommand("docker exec -it restful rails c")<CR>
" map <Leader>dl :call VimuxRunCommand("docker logs -f restful")<CR>
" map <Leader>du :call VimuxRunCommand("cd ~/Workspace/sentbe-rails-restful && docker-compose up -d app")<CR>
" map <Leader>dr :call VimuxRunCommand("docker stop restful && docker rm restful && cd ~/Workspace/sentbe-rails-restful && docker-compose up -d app && docker logs -f restful")<CR>

