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
set encoding=utf-8

colorscheme vibrantink

map j gj
map k gk
map <leader>nh :noh<Enter>

map <leader>ff :CommandT<CR>
map <leader>fb :CommandTBuffer<CR>
map <leader>fr :CommandTFlush<CR>

map <silent> <leader>nt :NERDTreeToggle<CR>
map <silent> <leader>nr :NERDTree<CR>
map <silent> <leader>nf :NERDTreeFind<CR>

autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd BufRead,InsertLeave * match ExtraWhitespace /\s\+$/
highlight ExtraWhitespace ctermbg=red guibg=red
autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red

autocmd BufRead,BufNewFile *.ino set filetype=c
