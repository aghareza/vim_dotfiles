set nocompatible
syntax on

call plug#begin('~/.vim/plugged')
Plug 'dense-analysis/ale',              {'tag': 'v2.6.0'}
Plug 'preservim/nerdtree',              {'tag': '6.7.15'}
Plug 'powerline/powerline',             {'tag': '2.8.1'}
Plug 'vim-airline/vim-airline',         {'commit': 'd221dc531298f467a6901861b0360741c2a387b0'}
Plug 'aghareza/vim-gitgrep',            {'commit': '3f988d58823b6a9c1678bb95e3832573ca6ac8a9'}
Plug 'elixir-editors/vim-elixir',       {'commit': '53c530f79cfcd12498e31fcf8ecc466eba34c75c'}
Plug 'ctrlpvim/ctrlp.vim',              {'commit': 'd93d97813dc839ef0782302a0debd7c4877f09f3'}
Plug 'drewtempelmeyer/palenight.vim',   {'commit': 'f332f9efe73227a47c18bade892ac55682641733'}
Plug 'vim-scripts/vibrantink',          {'commit': 'f7777656a73b7209b111e9cbd71945c315220500'}
Plug 'leafgarland/typescript-vim',      {'commit': '9f247d7693cd12171239c56c355ba863f559f424'}
call plug#end()

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
map Y y$
map <leader>nh :noh<Enter>

map <leader>ff :CtrlP<CR>
map <leader>fb :CtrlPBuffer<CR>

map <silent> <leader>nt :NERDTreeToggle<CR>
map <silent> <leader>nr :NERDTree<CR>
map <silent> <leader>nf :NERDTreeFind<CR>

map <leader>lj :!luajit %<CR>

autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd BufRead,InsertLeave * match ExtraWhitespace /\s\+$/
highlight ExtraWhitespace ctermbg=red guibg=red
autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red

autocmd BufRead,BufNewFile *.ino set filetype=c
