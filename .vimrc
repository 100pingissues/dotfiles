" set wildmenu
set wildmenu

" colorscheme
colorscheme molokai

" Disable compatibility with vi which can cause unexpected issues.
set nocompatible

" Enable type file detection. Vim will be able to try to detect the type of file in use.
filetype on

" Enable plugins and load plugin for the detected file type.
filetype plugin on

" Load an indent file for the detected file type.
filetype indent on

" Turn syntax highlighting on.
syntax on

" Add numbers to each line on the left-hand side.
set number

" Set shift width to 4 spaces.
set shiftwidth=4

" Set tab width to 4 columns.
set tabstop=4

" Use space characters instead of tabs.
set expandtab

" Do not save backup files.
set nobackup

" Do not let cursor scroll below or above N number of lines when scrolling.
set scrolloff=10

" Do not wrap lines. Allow long lines to extend as far as the line goes.
set nowrap

" While searching though a file incrementally highlight matching characters as you type.
set incsearch

" Ignore capital letters during search.
set ignorecase

" Override the ignorecase option if searching for capital letters.
" This will allow you to search specifically for capital letters.
set smartcase

" Show partial command you type in the last line of the screen.
set showcmd

" Show the mode you are on the last line.
set showmode

" Show matching words during a search.
set showmatch

" Use highlighting when doing a search.
set hlsearch
,
" Set the commands to save in history default number is 20.
set history=1000

" Navigate the split view easier
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

" Remap switching between buffers to Tab and Shift-Tab
nnoremap <tab> :bn<CR>
nnoremap <S-tab> :bp<CR>


" Airline Plugin Configuration 
  let g:airline_section_z = "%p%% : \ue0a1:%l/%L: Col:%c"
  let g:airline#extensions#whitespace#enabled = 0
  let g:airline_section_b = '%{strftime("%A")}'
  let g:bufferline_echo = 0
  let g:airline_powerline_fonts = 1
set noshowmode
set laststatus=2


" Plugin code goes here.
call plug#begin('~/.vim/plugged')
    Plug 'vim-airline/vim-airline'
    "Plug 'preservim/nerdtree'
    Plug 'bling/vim-bufferline'
call plug#end()


" MAPPINGS Set the backslash as the leader key.
let mapleader = '\' 

" Remapping Escape to jk
inoremap jk <esc>

" Turn off search highlighting
nnoremap <leader>\ :nohlsearch<CR>
,
" }}}


" VIM SCRIPT "
" This will enable code folding.
" Use the marker method of folding.
augroup filetype_vim
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
augroup END
