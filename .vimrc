execute pathogen#infect()
highlight clear SignColumn
highlight SpellBad gui=none

" installed powerline from pip
" pip install --user git+git://github.com/Lokaltog/powerline
" python from powerline.vim import setup as powerline_setup
" python powerline_setup()
" python del powerline_setup

let g:airline_powerline_fonts = 1
let g:bufferline_echo = 0
let g:airline_detect_whitespace=0

let g:airline_left_sep = ""
let g:airline_left_alt_sep = ""
let g:airline_right_sep = ""
let g:airline_right_alt_sep = ""
let g:airline_branch_prefix = ""
let g:airline_readonly_symbol = ""
let g:airline_linecolumn_prefix = ""
let g:airline_theme = 'powerlineish'

"  Parentheses colours using Solarized
let g:rbpt_colorpairs = [
  \ [ '13', '#6c71c4'],
  \ [ '5',  '#d33682'],
  \ [ '1',  '#dc322f'],
  \ [ '9',  '#cb4b16'],
  \ [ '3',  '#b58900'],
  \ [ '2',  '#859900'],
  \ [ '6',  '#2aa198'],
  \ [ '4',  '#268bd2'],
  \ ]
 
" Enable rainbow parentheses for all buffers
augroup rainbow_parentheses
  au!
  au VimEnter * RainbowParenthesesActivate
  au BufEnter * RainbowParenthesesLoadRound
  au BufEnter * RainbowParenthesesLoadSquare
  au BufEnter * RainbowParenthesesLoadBraces
augroup END

" set number
set textwidth=80
set tabstop=2
set shiftwidth=2
set expandtab
set spell
set nowrap
set number
set cursorline

set nocompatible
filetype off

filetype plugin indent on " required!

set laststatus=2
set visualbell t_vb=

set background=dark
syntax on

" only give me powerline, large fonts, etc if I'm using macvim.
if has('gui_running')
  set guifont=Droid\ Sans\ Mono\ for\ Powerline:h15
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
