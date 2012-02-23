call pathogen#infect()
syntax on
filetype plugin indent on

"colorscheme railscasts"

set hidden " Automatically hide changed files when moving to the next buffer

set nocompatible  " We don't want vi compatibility.

set autoread

set incsearch
set hlsearch

set noswapfile
set nobackup
set nowb

"make cmdline tab completion similar to bash
set wildmode=list:longest   
set wildmenu                "enable ctrl-n and ctrl-p to scroll thru matches
set wildignore=*.o*.obj*~ "stuff to ignore when tab completing

set cindent
set smartindent
set autoindent
set expandtab
set tabstop=2
set shiftwidth=2
set number

let mapleader = '\'
"map <leader>F :FufFile<CR>
"map <leader>f :FufTaggedFile<CR>
"map <leader>s :FufTag<CR>
map <leader>SS :mksession! ~/vim.session

map <leader>b :tabnew<CR>
map <Leader>n <plug>NERDTreeTabsToggle<CR>

" Buffers - explore/next/previous: Alt-F12, F12, Shift-F12.
nnoremap <silent> <M-F12> :BufExplorer<CR>
nnoremap <silent> <F12> :bn<CR>
nnoremap <silent> <S-F12> :bp<CR>

" Visual
set showmatch  " Show matching brackets.

let g:ackprg="ack-grep -H --nocolor --nogroup --column"
