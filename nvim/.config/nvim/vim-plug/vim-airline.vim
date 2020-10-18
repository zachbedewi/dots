" Configuration file for vim-airline.
"
" Author: Zach Bedewi

" Allow the use of powerline fonts
let g:airline_powerline_fonts = 1

" Before we create the dictionary of powerline symbols to be used we must
" define the dictionary. This will make sure that a dictionary has not already
" been defined.
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" Create the dictionary of symbols that will be used
let g:airline_left_sep =            "\uE0B4"
let g:airline_left_alt_sep =        "\uE0B5"
let g:airline_right_sep =           "\uE0B6"
let g:airline_right_alt_sep =       "\uE0B7"
let g:airline_symbols.branch =      "\uE0A0"
let g:airline_symbols.readonly =    "\uE0A2"

" Display the enhanced tabline which will show the open buffers as long as
" there is only one tab open
let g:airline#extensions#tabline#enabled = 1
