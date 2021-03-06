syntax on
set autoindent
set cc=80
set expandtab
set hlsearch
set nocompatible
set number
set ruler
set shiftwidth=4
set showmode
set smartcase
set smartindent
set tabstop=4
highlight Comment ctermfg=green

filetype plugin indent on

map <F2> :SyntasticReset<CR>
map <F3> :set sw=8 ts=8 noet<CR>
map <F5> :!xclip -sel clip %<CR><CR>

call plug#begin('~/.local/share/nvim/plugged')
Plug 'vim-syntastic/syntastic'
Plug 'nbouscal/vim-stylish-haskell'
Plug 'jaeleet/molokai'
call plug#end()

colo molokai

let g:syntastic_go_checkers = ['go', 'gofmt', 'govet', 'golint']
let g:syntastic_python_python_exec = 'python3'
let g:syntastic_python_checkers = ['python', 'pylint']
let g:syntastic_hs_checkers = ['hlint', 'hdevtools']

let g:syntastic_auto_jump = 0
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0

