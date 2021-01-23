" make sure not use vi compatibility mode
set nocompatible

" vim-plug
call plug#begin('~/.vim/plugged')
Plug 'joshdick/onedark.vim'
Plug 'itchyny/lightline.vim'
Plug 'ntpeters/vim-better-whitespace'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'sheerun/vim-polyglot'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

" ditch arrow keys in visual mode
noremap <Left> <NOP>
noremap <Right> <NOP>
noremap <Up> <NOP>
noremap <Down> <NOP>


" set autoindent on
set tabstop=4
set softtabstop=4
set shiftwidth=4
set smartindent
set expandtab

" show commands as you type them
set showcmd

" Tabs for makefiles
autocmd FileType make setlocal noexpandtab
autocmd Filetype bzl setlocal expandtab tabstop=4 shiftwidth=4 softtabstop=4 autoindent
autocmd Filetype json setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2 smartindent

" Indent c files with 8 spaces
"autocmd FileType c setlocal shiftwidth=8 tabstop=8 softtabstop=8

" Line numbers
set number
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

" Disable swapfiles
set noswapfile

"colorscheme onedark
syntax on
colorscheme onedark
set laststatus=2
set termguicolors

" Ctrl-p path settings
let g:ctrlp_working_path_mode = '0'

map ,<space> :nohlsearch<CR>

" Add matching { brackets
inoremap {<cr> {<cr>}<esc>O

let g:filetype_bazel="bzl"

" Reformat json
map ,r :%!jq .<CR>

au BufNewFile,BufRead *.template set ft=jinja

""""""""""""""""""""""""" COC
source ~/.vim/coc.conf
