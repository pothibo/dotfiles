" Editor
inoremap <Tab> <C-R>=Tab_Or_Complete()<CR>

" Documentation
nnoremap <c-g> <c-]>

" Window moving
nnoremap <c-l> <c-w>l
nnoremap <c-h> <c-w>h
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k

" Rails stuff
map <leader>f :FZF <cr>

" Syntastic
map <leader>e :lopen<cr>
map <leader>ne :lnext<cr>
map <leader>np :lprev<cr>

" Github
map <leader>gw :Gbrowse<cr>
map <leader>gb :Gblame<cr>
map <leader>ga :GitGutterStageHunk<cr>
map <leader>gr :GitGutterUndoHunk<cr>
