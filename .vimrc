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
set cindent

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

" Tabs for makefiles
autocmd FileType make setlocal noexpandtab

" Indent c files with 8 spaces
autocmd FileType c setlocal shiftwidth=8 tabstop=8 softtabstop=8

" Line numbers
set number
"set relativenumber
set hidden

set list
set listchars=tab:>-

" Search optimalisations
set incsearch
set hlsearch
set ignorecase
set smartcase

" Ignore compiled files
set wildignore=*.o,*~,*.pyc

set undofile
set undodir=~/.vim/undodir
set history=10000

colorscheme atom-dark-256
set laststatus=2

" Ctrl-p path settings
let g:ctrlp_working_path_mode = 'rw'

map ,<space> :nohlsearch<CR>

set scrolloff=3

" Add matching {
inoremap {<cr> {<cr>}<esc>O
