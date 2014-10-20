" Text stuff
syntax on
set autoindent
filetype plugin indent on


" Let there be colors!
set t_Co=256
set background=light
colorscheme sand


" Fixing the Editor
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2
set number
set cursorline
set encoding=utf-8
set fileencoding=utf-8
set backspace=indent,eol,start


" Searching
set history=10000
set showmatch
set incsearch
set hlsearch


" Window stuff
set laststatus=2
set numberwidth=6
set showtabline=1
set winwidth=80


" Store temporary files in a central spot
set backup
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp


" Tab completion is a must
set wildmenu
let mapleader=","


" Mark trailing whitespace
match Todo /\([N]OCOMMIT\)\|\(\(\t\|\s\)\+$\)/

" Rails
let g:rubycomplete_buffer_loading = 1
let g:rubycomplete_rails = 1

" Airline
let g:airline_powerline_fonts = 1

" ctrlp
let g:ctrlp_use_caching = 0
