"vim-rainbow : https://github.com/luochen1990/rainbow
"vim-autoclose : https://github.com/Townk/vim-autoclose/
"lightline : https://github.com/itchyny/lightline.vim
"NERDTree : https://github.com/preservim/nerdtree
"gitGutter : https://github.com/gitgutter/Vim
"Polyglot : https://github.com/sheerun/vim-polyglot

syntax on
"colorscheme solarized

if !has('gui_running')
  set t_Co=256
endif

let g:rainbow_active = 1 "set to 0 if you want to enable it later via :RainbowToggle

let g:lightline = {
      \ 'colorscheme': 'solarized',
      \ }

set tabstop=4
set shiftwidth=4
set expandtab
set number relativenumber
set laststatus=2
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:clang_c_options = '-Wall -Wextra -pedantic -std=ansi'
let g:clang_cpp_options = '-Wall -Wextra -std=c++17'

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

map <C-n> :NERDTreeToggle<CR>
nnoremap <esc> :noh<return><esc>
nnoremap <esc>^[ <esc>^[
