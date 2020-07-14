" Plugin management in vim using vim-plug
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

" Nice statusline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Easy matching delimiters
Plug 'jiangmiao/auto-pairs'

" Autocomplete
Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()
