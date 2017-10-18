execute pathogen#infect()

let g:bufferline_echo = 0

let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1

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

highlight clear SpellBad
highlight SpellBad cterm=underline
highlight clear CursorLine

" backup related stuff
set autowrite
set nobackup

" backup to ~/.tmp
set backup
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set backupskip=/tmp/*,/private/tmp/*
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set writebackup
