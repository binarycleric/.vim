execute pathogen#infect()
highlight clear SignColumn

" installed powerline from pip
" pip install --user git+git://github.com/Lokaltog/powerline
python from powerline.vim import setup as powerline_setup
python powerline_setup()
python del powerline_setup

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
  set guifont=Inconsolata\ for\ Powerline:h16
  set guioptions=egmrt
endif

colorscheme solarized
let g:Powerline_symbols = 'fancy'

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
