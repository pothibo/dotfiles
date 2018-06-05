if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

source $HOME/.vim/plugs.vim
source $HOME/.vim/functions.vim
source $HOME/.vim/settings.vim
source $HOME/.vim/map.vim
