" Text stuff
syntax on
set autoindent


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


set statusline=%1*\ %{GetCurrentName()}
set statusline+=%2*\  "Space
set statusline+=%2*\  "Space
set statusline+=%2*\  "Space
set statusline+=%<%2*in:%3*%{getcwd()}
set statusline+=%2*\  "Space
set statusline+=%4*\ %{strlen(&ft)?&ft:'none'}\ 
set statusline+=%2*\  "Space
set statusline+=%6*%{&readonly?'\ read-only\ ':''}
set statusline+=%2*\  "Space
set statusline+=%7*%{&modified?'\ Modified\ ':''}
set statusline+=%2*%=
set statusline+=%2*col:%4*%c
set statusline+=%2*\  "Space
set statusline+=%2*line:%4*%l 
set statusline+=%2*\  "Space
set statusline+=%2*total:%4*%L
set statusline+=%2*\  "Space
set statusline+=%2*\  "Space
set statusline+=%2*\  "Space
set statusline+=%2*\  "Space
set statusline+=%2*\  "Space
set statusline+=%2*%3*%{strlen(&fenc)?&fenc:'no\ encoding'}
set statusline+=%2*\  "Space


" Store temporary files in a central spot
set backup
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp


" Tab completion is a must
set wildmenu
let mapleader=","


" Mark trailing whitespace
match Todo /\([N]OCOMMIT\)\|\(\(\t\|\s\)\+$\)/
