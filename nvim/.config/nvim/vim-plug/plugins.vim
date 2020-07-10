" Plugin management in vim using vim-plug
"
" Author: Zach Bedewi

" Automatically install vim-plug if it isn't installed already
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

call plug#begin('~/.config/nvim/autoload/plugged')

call plug#end()