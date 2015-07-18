runtime bundle/vim-pathogen/autoload/pathogen.vim
let g:pathogen_disabled = ["lightline", "powerline"]
execute pathogen#infect()
execute pathogen#helptags()

syntax on
filetype plugin indent on

set background=light
colorscheme PaperColor

set number

let mapleader = ","

nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

autocmd VIMENTER * NERDTree
autocmd VIMENTER * wincmd p ""move cursor to main window

imap <TAB> <Plug>snipMateTrigger
map <c-s> <ESC>:w<cr>
inoremap <c-s> <ESC>:w<cr>i

" search

set incsearch       " Find the next match as we type the search
set hlsearch        " Highlight searches by default
set ignorecase      " Ignore case when searching...
set smartcase       " ...unless we type a capital
