" This file contains all of the mappings the are used in this neovim
" configuration.
"
" Author: Zach Bedewi

" Set the mapleader to be a space
let g:mapleader= " "

" Use jk or kj to ESC
inoremap jk <Esc>
inoremap kj <Esc>

" Save with CTRL-s
nnoremap <C-s> :w<CR>

" Terminal mappings
tnoremap <Esc> <C-\><C-n>

" Call the ToggleCC() function in order to show or hide a column marker
nnoremap <Leader>cc :call ToggleCC()<CR>

" coc-explorer mappings
nmap <Leader>e :CocCommand explorer<CR>

" Open a terminal in the lower quarter of the window
nmap <Leader>t :exec winheight(0)/4."split"<CR>:terminal<CR>
