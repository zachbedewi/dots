" Primary neovim configuration file. This file sources all the other necessary
" configuration files for this neovim setup.
"
" Author: Zach Bedewi

let nvim_config_dir = $XDG_CONFIG_HOME."/nvim/"

exec 'source' nvim_config_dir.'vim-plug/plugins.vim'

let dirList = split(globpath(nvim_config_dir, '*'), '\n')

for dir in dirList
    if isdirectory(dir)
        if dir != nvim_config_dir."autoload"
            let file_list = split(globpath(dir, '*'), '\n')
            for filename in file_list
                exec 'source' filename
            endfor
        endif
    endif
endfor

" Colorscheme
set termguicolors
colorscheme dracula
