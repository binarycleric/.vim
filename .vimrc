execute pathogen#infect()
highlight clear SignColumn

" installed powerline from pip
" pip install --user git+git://github.com/Lokaltog/powerline
" python from powerline.vim import setup as powerline_setup
" python powerline_setup()
" python del powerline_setup

let g:airline_powerline_fonts = 1
let g:bufferline_echo = 0
let g:airline_detect_whitespace=0

let g:airline_left_sep = "\u2b80"
let g:airline_left_alt_sep = "\u2b81"
let g:airline_right_sep = "\u2b82"
let g:airline_right_alt_sep = "\u2b83"
let g:airline_branch_prefix = "\u2b60"
let g:airline_readonly_symbol = "\u2b64"
let g:airline_linecolumn_prefix = "\u2b61"
let g:airline_theme = 'powerlineish'

" set number
set textwidth=80
set tabstop=2
set shiftwidth=2
set expandtab
set spell
set nowrap
set number

set nocompatible
filetype off

filetype plugin indent on " required!

set laststatus=2
set visualbell t_vb=

set background=dark
syntax on

" only give me powerline, large fonts, etc if I'm using macvim.
if has('gui_running')
  set guifont=Droid\ Sans\ Mono\ for\ Powerline:h14
  set guioptions=egmrt
endif

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
let g:airline_symbols.space = "\ua0"

colorscheme solarized
" let g:Powerline_symbols = 'fancy'

let &colorcolumn="80,".join(range(120,999),",")

" backup related stuff
set autowrite
set nobackup

" backup to ~/.tmp 
set backup 
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp 
set backupskip=/tmp/*,/private/tmp/* 
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp 
set writebackup
