" Do not force Vi compatibility
set nocompatible

" Read file when modified outside of Vim
set autoread

" enable syntax highlighting and plugins (for netrw)
syntax enable
filetype plugin on

" Show matching brackets
set showmatch

" Highlight cursor line
set cursorline

" tabs
set tabstop=4
set shiftwidth=4
set expandtab

" Show invisible chars
set listchars=eol:¬,tab:▸\ ,trail:·
highlight NonText guifg=#4a4a59
highlight SpecialKey guifg=#4a4a59

" Line counter, ruler & listchars
set number
set ruler
set list

" Autoindent & correct backspace behaviour
set autoindent
set backspace=indent,eol,start
set complete-=i
set smarttab

" Copy, copies to system's clipboard
set clipboard=unnamedplus

" Colorscheme
" colorscheme ?

" Hide the toolbar in GYU
set guioptions-=T

" fuzzy finder -> use :find <file>
set path+=**

" Display all matching files when we tab complete
set wildmenu

" NOTES: use *.ext to match every .ext file, use :b to match every previously opened file

" Basic autocomplete using ^n and ^p (use ^x^n to only match words from this file)
" documentation in |ins-completion|

