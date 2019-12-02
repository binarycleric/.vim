let g:bufferline_echo = 0

let g:airline_extensions = []
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
" set cursorline
set nocompatible
set termguicolors
set rtp+=/usr/local/opt/fzf

filetype off
filetype plugin indent on " required!

set laststatus=2
set visualbell t_vb=

syntax on
set background=dark

highlight clear SpellBad
highlight SpellBad cterm=underline
highlight clear CursorLine

" colorscheme tender

if has("gui_running")
  set guioptions=
  set guifont=FiraCode-Retina:h14
  autocmd VimLeave * macaction terminate:
endif

" backup related stuff
set autowrite

set backup
set backupdir=/tmp//
set directory=/tmp//
set undodir=/tmp//
set backupskip=/tmp/*,/private/tmp/*
set writebackup

call plug#begin()

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'vim-airline/vim-airline'
Plug 'mileszs/ack.vim'

Plug 'elzr/vim-json'

Plug 'guns/vim-clojure-static'
Plug 'guns/vim-clojure-highlight'

Plug 'fatih/vim-go'
Plug 'vim-ruby/vim-ruby'
Plug 'tpope/vim-bundler'

Plug 'rust-lang/rust.vim'

Plug 'ekalinin/Dockerfile.vim'
Plug 'cespare/vim-toml'

call plug#end()
