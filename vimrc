runtime bundle/vim-pathogen/autoload/pathogen.vim
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
