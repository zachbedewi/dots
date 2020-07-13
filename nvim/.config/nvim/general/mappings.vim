" This file contains all of the mappings the are use in this neovim
" configuration
"
" Author: Zach Bedewi

" Use ALT-hjkl to resize windows
nnoremap <M-j>    :resize -2<CR>
nnoremap <M-k>    :resize +2<CR>
nnoremap <M-h>    :vertical resize -2<CR>
nnoremap <M-l>    :vertical resize +2<CR>

" Use jk or kj to ESC
inoremap jk <Esc>
inoremap kj <Esc>

" Save with CTRL-s
nnoremap <C-s> :w<CR>
