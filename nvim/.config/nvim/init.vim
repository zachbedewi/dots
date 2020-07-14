"Primary neovim configuration file. This file sources all the other necessary
" configuration files needed for this neovim setup.
"
" Author: Zach Bedewi

" Source all the necessary files
source $HOME/.config/nvim/vim-plug/plugins.vim
source $HOME/.config/nvim/general/settings.vim
source $HOME/.config/nvim/general/mappings.vim
source $HOME/.config/nvim/general/functions.vim

" Source all of the files pertaining to plugin configuration
source $HOME/.config/nvim/vim-plug/base16.vim
source $HOME/.config/nvim/vim-plug/vim-airline.vim
source $HOME/.config/nvim/vim-plug/coc.vim
