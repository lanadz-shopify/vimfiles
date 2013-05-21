set nocompatible               " be iMproved
filetype on
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" My Bundles:
Bundle 'pangloss/vim-javascript'
Bundle 'vim-ruby/vim-ruby'
Bundle 'tpope/vim-rails.git'
Bundle 'kchmck/vim-coffee-script'
Bundle 'tpope/vim-haml'
Bundle 'tpope/vim-fugitive'     	
Bundle 'scrooloose/nerdtree'
Bundle 'jpo/vim-railscasts-theme'
Bundle 'scrooloose/syntastic'   	
Bundle 'thisivan/vim-bufexplorer'
Bundle 'tpope/vim-commentary'

" Vim sugar for the UNIX shell commands (Remove, Move, Find, Chmod)
Bundle 'tpope/vim-eunuch'
" Change text surronding chars (cs"', cs'<q>, cst")
Bundle 'tpope/vim-surround'
Bundle 'git://git.wincent.com/command-t.git'
Bundle 'mileszs/ack.vim'

filetype plugin indent on     " required!

syntax on

colorscheme railscasts

set hidden " Automatically hide changed files when moving to the next buffer

set autoread

set incsearch
set hlsearch

set noswapfile
set nobackup
set nowb

"make cmdline tab completion similar to bash
set wildmode=list:longest   
set wildignore=*.o*.obj*~ "stuff to ignore when tab completing

set cindent
set smartindent
set autoindent
set expandtab
set tabstop=2
set shiftwidth=2
set number

" Automatically remove whitespaces on empty lines
autocmd BufWritePre *.rb :%s/^\s\+$//e

let mapleader = '\'

map <Leader>n :NERDTree<CR>

" Buffers - explore/next/previous: Alt-F12, F12, Shift-F12.
nnoremap <silent> <M-F12> :BufExplorer<CR>
nnoremap <silent> <F12> :bn<CR>
nnoremap <silent> <S-F12> :bp<CR>

" Visual
set showmatch  " Show matching brackets.

let g:ackprg="ack -H --nocolor --nogroup --column"

" Save undo info after editor is closed
if version >= 700
  set history=64
  set undolevels=128
  set undodir=~/.vim/undodir/
  set undofile
  set undolevels=1000
  set undoreload=10000
endif

set mouse=a

