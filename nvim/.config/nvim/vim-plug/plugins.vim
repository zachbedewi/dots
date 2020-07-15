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

" Base16 colorschemes
Plug 'chriskempson/base16-vim'

" Easily configurable statusline that integrates with many other plugins
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Easy matching delimiters
Plug 'jiangmiao/auto-pairs'

" Code completion/intellisense
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" C++ semantic highlighting
Plug 'jackguo380/vim-lsp-cxx-highlight'

call plug#end()
