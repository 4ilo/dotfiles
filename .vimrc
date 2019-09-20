" make sure not use vi compatibility mode
set nocompatible

" ditch arrow keys in visual and insert mode
"inoremap <Left> <NOP>
"inoremap <Right> <NOP>
"inoremap <Up> <NOP>
"inoremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>
noremap <Up> <NOP>
noremap <Down> <NOP>

" enable syntax highlighting
syntax enable

" set autoindent on
set autoindent

" show commands as you type them
set showcmd

" insert spaces when <Tab> is pressed (use <ctrl-V><Tab> to insert a real tab)
set expandtab
" number of columns text is indented with the reindent operations (< and >)
set shiftwidth=4
" how many columns a <Tab> character should span
set tabstop=4
" how many spaces are inserted when pressing tab
set softtabstop=4

" Line numbers
set number
"set relativenumber
set hidden

" Search optimalisations
set incsearch
set hlsearch
set ignorecase
set smartcase

set undofile
set undodir=~/.vim/undodir
set history=10000

colorscheme atom-dark-256
set laststatus=2

