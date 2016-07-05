execute pathogen#infect()
highlight clear SignColumn
highlight SpellBad gui=none

let g:airline_powerline_fonts = 1
let g:bufferline_echo = 0

let g:airline_left_sep = ""
let g:airline_left_alt_sep = ""
let g:airline_right_sep = ""
let g:airline_right_alt_sep = ""
let g:airline_branch_prefix = ""
let g:airline_readonly_symbol = ""
let g:airline_theme = 'powerlineish'

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

let g:airline_symbols.crypt = '🔒'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.maxlinenr = '☰'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.spell = 'Ꞩ'
let g:airline_symbols.notexists = '∄'
let g:airline_symbols.whitespace = 'Ξ'

let g:airline#extensions#whitespace#checks = ['indent']
let airline#extensions#hunks#non_zero_only = 1

let g:airline_section_b = ""
let g:airline_section_y = "%{airline#util#wrap(airline#extensions#branch#get_head(),0)}"
let g:airline_section_z = airline#section#create(['linenr', 'maxlinenr'])

let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1

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

autocmd FileType ruby autocmd BufWritePre <buffer> %s/\s\+$//e

set nofoldenable
" set number
set textwidth=80
set tabstop=2
set shiftwidth=2
set backspace=indent,eol,start
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
  set guifont=Hack\ Regular:h15
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
