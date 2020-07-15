" This file contains useful vim functions.
"
" Author: Zach Bedewi

" Toggle a vertical column marker at column 80
function! ToggleCC()
    if &cc == ''
        set cc=80
    else
        set cc=
    endif
endfunction
