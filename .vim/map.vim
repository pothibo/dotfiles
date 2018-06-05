" Editor
inoremap <Tab> <C-R>=Tab_Or_Complete()<CR>

" Disabling arrows. Time to dig in
map <leader>f :CtrlP<cr>

" Documentation
nnoremap <c-g> <c-]>

" Window moving
nnoremap <c-l> <c-w>l
nnoremap <c-h> <c-w>h
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k

" Rails stuff
noremap <leader>r :topleft :split config/routes.rb<cr>
map <leader>ga :FZF app/<cr>
map <leader>gl :FZF lib/<cr>
map <leader>gs :FZF spec<cr>
map <leader>gc :FZF config<cr>

" Syntastic
map <leader>e :lopen<cr>
map <leader>ne :lnext<cr>
map <leader>np :lprev<cr>
