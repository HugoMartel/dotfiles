" -- Plugins --
" https://github.com/ycm-core/YouCompleteMe    	-> Completion
" https://github.com/mbbill/undotree		-> Visual Undo History
" https://github.com/itchyny/lightline.vim	-> bottom status bar
" https://github.com/luochen1990/rainbow	-> rainbow parenthesis, brackets, etc...
" https://github.com/sheerun/vim-polyglot	-> indentation and syntax highlighting
" not installed but could be /!\  https://github.com/tpope/vim-fugitive


" -- Style & Theme --
syntax on
set number relativenumber

" tabs
set tabstop=4
set shiftwidth=4
set expandtab

" rainbow parenthesis config
let g:rainbow_active = 1 "set to 0 if you want to enable it later via :RainbowToggle

" lightline config
set laststatus=2
set noshowmode

" NerdTree config
" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif


" -- Remaps --
" F5 -> open undotree
nnoremap <F5> :UndotreeToggle<CR>

" NerdTree
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
