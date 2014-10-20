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
map <leader>gv :CtrlP app/views<cr>
map <leader>gc :CtrlP app/controllers<cr>
map <leader>gm :CtrlP app/models<cr>
map <leader>gh :CtrlP app/helpers<cr>
map <leader>gd :CtrlP app/decorators<cr>
map <leader>gl :CtrlP config/locales<cr>
map <leader>gs :CtrlP app/assets/stylesheets<cr>
map <leader>gj :CtrlP app/assets/javascripts<cr>
map <leader>gg :topleft 100 :split Gemfile<cr>
