runtime bundle/vim-pathogen/autoload/pathogen.vim
" let g:pathogen_disabled = ["lightline", "powerline"]
execute pathogen#infect()
execute pathogen#helptags()

syntax on
filetype plugin indent on

set tabstop=4
set shiftwidth=4
set expandtab
set softtabstop=4 " To delete tab using backspace

set background=light
colorscheme PaperColor

let mapleader = ","

" set omnifunc=syntaxcomplete#Complete

"misc
 
set noswapfile
set wildmenu
set wildmode=list:longest
 "toggle between relative numbers
nnoremap <silent><leader>n :set relativenumber!<cr>

autocmd InsertEnter * :set number
autocmd InsertLeave * :set relativenumber

set hidden "keeps the buffer hidden untill you come back to that buffer
" imap <TAB> <Plug>snipMateTrigger
map <c-s> <ESC>:w<cr>   " save file in normal mode
imap <c-s> <ESC>:w<cr>i
map <c-q> <ESC>:q!<cr>

nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

"NERDTree

autocmd VIMENTER * NERDTree
autocmd VIMENTER * wincmd p ""move cursor to main window
nnoremap <silent><leader>e :NERDTreeFind<cr>
map <F2> :NERDTreeToggle<cr>

" search

set incsearch       " Find the next match as we type the search
set hlsearch        " Highlight searches by default
set ignorecase      " Ignore case when searching...
set smartcase       " ...unless we type a capital
set ai "auto indent
set si "smart indent

map <F4> :execute "vimgrep /" . expand("<cword>") . "/j **" <Bar> cw<CR> " Search for all the occurances of current word in current folder
map <F5> :execute 'vimgrep /'.expand('<cword>').'/gj '.expand('%') <Bar> copen<CR> " Search all the occurances of the current word in current file

cmap w!! w !sudo tee > /dev/null %



"command-T

nnoremap <silent> <leader>b :CommandTMRU<CR>


"easy motion
map  / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)
map  n <Plug>(easymotion-next)
map  N <Plug>(easymotion-prev)


"syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0


