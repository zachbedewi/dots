" This file contains all of the mappings the are used in this neovim
" configuration.
"
" Author: Zach Bedewi

" Use jk or kj to ESC
inoremap jk <Esc>
inoremap kj <Esc>

" Save with CTRL-s
nnoremap <C-s> :w<CR>

" Call the ToggleCC() function in order to show or hide a column marker
nnoremap <Leader>cc :call ToggleCC()<CR>
