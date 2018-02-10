execute pathogen#infect()

filetype plugin on

" Syntax and other basic stuff
filetype on
set number
set hidden
set history=100
syntax on
set encoding=utf-8
set clipboard=unnamed


" Indenting stuff
filetype indent on
set nowrap
set tabstop=4
set shiftwidth=4
set expandtab
set smartindent
set autoindent

" Python indentation
au BufNewFile,BufRead *.py
            \ set tabstop=4
            \ set softtabstop=4
            \ set shiftwidth=4
            \ set textwidth=79
            \ set expandtab
            \ set autoindent
            \ set fileformat=unix

" Unnecessary Whitespace
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

" Red line at column 81
set cc=81

" Cursor Column and Row
set cursorcolumn
set cursorline
highlight CursorColumn cterm=bold ctermbg=none
highlight CursorLine cterm=bold ctermbg=none

" Change cursor row/column colour in insert mode
autocmd InsertEnter * highlight CursorLine cterm=bold ctermbg=DarkCyan
autocmd InsertEnter * highlight CursorColumn cterm=bold ctermbg=DarkCyan
autocmd InsertLeave * highlight CursorLine cterm=bold ctermbg=none
autocmd InsertLeave * highlight CursorColumn cterm=bold ctermbg=none

" Reduce the delay when exiting insert mode. Without this, there's a delay
" before the above InsertLeave triggers.
set ttimeoutlen=30

" Split navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Folding
set foldmethod=indent
set foldlevel=99
nnoremap <space> za
