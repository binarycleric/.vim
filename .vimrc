execute pathogen#infect()

" So airline doesn't sit and wait for other things to happen. So annoying.
set ttimeoutlen=50

let g:airline_powerline_fonts = 1
let g:bufferline_echo = 0

let g:airline_left_sep = ""
let g:airline_left_alt_sep = ""
let g:airline_right_sep = ""
let g:airline_right_alt_sep = ""
let g:airline_branch_prefix = ""
let g:airline_readonly_symbol = ""
let g:airline_theme = 'solarized'

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
let g:airline_section_y = "" 
" let g:airline_section_z = airline#section#create(['linenr', 'maxlinenr'])
let g:airline_section_z = "" 

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
set scrolloff=15
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

syntax on
set background=dark
colorscheme solarized

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
let g:airline_symbols.space = "\ua0"

highlight clear SpellBad
highlight SpellBad cterm=underline
" highlight Cursorline cterm=bold ctermbg=233
" highlight ColorColumn ctermbg=232

set colorcolumn=80

" let colorcolumn=23
" let &colorcolumn="80,".join(range(120,999),",")

" backup related stuff
set autowrite
set nobackup

" backup to ~/.tmp 
set backup 
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp 
set backupskip=/tmp/*,/private/tmp/* 
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp 
set writebackup
