" Plugin management in vim using vim-plug. This file is used to install all of
" the plugins used in this neovim configuration.
"
" Author: Zach Bedewi

" Automatically install vim-plug if it isn't installed already
if empty(glob('~/.config/nvim/autoload/plug.vim'))
    silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
                \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

call plug#begin('~/.config/nvim/autoload/plugged')
" --- Colorscheme Packages --- "
" Dracula
Plug 'dracula/vim', { 'as': 'dracula' }
" Nord
Plug 'arcticicestudio/nord-vim'

" --- Git integration --- "
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'

" --- Fuzzy Finder --- "
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" --- Vim Airline --- "
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" --- Code completion --- "
Plug 'neoclide/coc.nvim', {'branch': 'release'}
let g:coc_global_extensions = [
\ 'coc-explorer',
\ 'coc-vimlsp',
\ 'coc-sh',
\ 'coc-python',
\ 'coc-json',
\ 'coc-clangd',
\ ]

" --- Misc. plugins --- "
Plug 'jackguo380/vim-lsp-cxx-highlight'
Plug 'jiangmiao/auto-pairs'

call plug#end()
