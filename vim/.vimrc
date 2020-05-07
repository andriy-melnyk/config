execute pathogen#infect()
syntax on
filetype plugin indent on

set noswapfile 
set nobackup
set nowb

set number
set numberwidth=1
set encoding=utf-8

au BufNewFile,BufRead *.py set 
  \ tabstop=4
  \ softtabstop=4
  \ shiftwidth=4

au BufNewFile,BufRead *.js set 
  \ tabstop=2
  \ softtabstop=2
  \ shiftwidth=2

au BufNewFile,BufRead *.{yaml,yml} set 
  \ tabstop=2
  \ softtabstop=2
  \ shiftwidth=2

set tabstop=4
set softtabstop=4
set shiftwidth=4
set textwidth=99

set expandtab 
set autoindent
set fileformat=unix

if exists('$TMUX')
    set termguicolors

    " This is only necessary if you use "set termguicolors".
    let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
    let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

    colorscheme monokai_pro

    " Fixes glitch? in colors when using vim with tmux
    set background=dark
    set t_Co=256
endif

let NERDTreeIgnore=['\.venv-*', '__pycache__', '\.egg-info$']

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

set wildignore+=*.o,*.obj,.git,*.pyc
set wildignore+=eggs/**
set wildignore+=*.egg-info/**

set colorcolumn=100

" no wrap
set nowrap
set linebreak
set tw=0
set wm=0

" Menu completion in command mode on <Tab>
set wildmenu
set wildmode=full
set showcmd

":set ignorecase
":set smartcase

":set hlsearch
map q <Nop>

