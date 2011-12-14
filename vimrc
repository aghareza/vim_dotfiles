call pathogen#infect()
set nocompatible
syntax on

filetype off
filetype plugin indent on

set hlsearch
set number
set showmatch
set background=dark
set hidden
set backspace=indent,eol,start
set textwidth=0 nosmartindent tabstop=2 shiftwidth=2 softtabstop=2 expandtab
set ruler
set wrap
set ignorecase
set smartcase
set t_Co=256

colorscheme vibrantink

map <leader>nh :noh<Enter>

map <leader>ff :CommandT<CR>
map <leader>fb :CommandTBuffer<CR>
map <leader>fr :CommandTFlush<CR>

map <silent> <LocalLeader>nt :NERDTreeToggle<CR>
map <silent> <LocalLeader>nr :NERDTree<CR>
map <silent> <LocalLeader>nf :NERDTreeFind<CR>
