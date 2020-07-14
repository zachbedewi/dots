" This file contains useful vim functions.
"
" Author: Zach Bedewi

" Toggle a vertical column marker at column 80
fun! ToggleCC()
    if &cc == ''
        set cc=80
    else
        set cc=
    endif
endfun
