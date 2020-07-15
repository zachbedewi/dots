" General settings that are useful for neovim.
"
" Author: Zach Bedewi

" Set the mapleader key to be a space
let g:mapleader= " "

syntax enable               " Enables syntax highlighting
set hidden                  " Required to keep multiple buffers
set nowrap                  " Display long lines as just one line
set encoding=utf-8          " Set the encoding being displayed
set fileencoding=utf-8      " The encoding written to a file
set ruler                   " Show the cursor position at all times
set cmdheight=2             " More space for displaying messages
set iskeyword+=-            " Treat dashed words as a word text object
set mouse=a                 " Enable mouse input
set splitbelow              " Horizontal splits will automatically be below
set splitright              " Vertical splits will automatically be to the right
set t_Co=256                " Support 256 colors
set tabstop=4               " Insert 4 spaces for a tab
set shiftwidth=4            " Change the number of space characters inserted for indentation
set smarttab                " Makes tabbing smarter
set expandtab               " Converts tabs to spaces
set smartindent             " Makes indenting smart
set autoindent              " Better auto indenting
set laststatus=0            " Always display the status line
set number                  " Show line numbers
set cursorline              " Enable highlighting of the current line
set background=dark         " Tell vim what the background color looks like
set noshowmode              " Don't need to see the mode that we are in
set nobackup                " Recommended by coc.nvim
set nowritebackup           " Recommended by coc.nvim
set updatetime=300          " Faster completion
set timeoutlen=500          " By default timeoutlen is 1000
set formatoptions-=cro      " Stop newline continuation of comments
set clipboard=unnamedplus   " Copy paste between vim and everything else
