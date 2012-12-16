set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" My Bundles:
Bundle 'git://git.wincent.com/command-t.git'
Bundle 'tpope/vim-rails.git'
" Git integration
Bundle 'tpope/vim-fugitive'     	
Bundle 'mileszs/ack.vim'
Bundle 'scrooloose/nerdtree'
Bundle 'jpo/vim-railscasts-theme'
" Check syntax
Bundle 'scrooloose/syntastic'   	
" Switch between buffers
Bundle 'thisivan/vim-bufexplorer'
" Comment/uncomment code
Bundle 'tpope/vim-commentary'
Bundle 'tpope/vim-haml'
" Vim sugar for the UNIX shell commands (Remove, Move, Find, Chmod)
Bundle 'tpope/vim-eunuch'
" Change text surronding chars (cs"', cs'<q>, cst")
Bundle 'tpope/vim-surround'
Bundle 'pangloss/vim-javascript'
Bundle 'vim-ruby/vim-ruby'

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

map <Leader>n :NERDTree<CR>

" Buffers - explore/next/previous: Alt-F12, F12, Shift-F12.
nnoremap <silent> <M-F12> :BufExplorer<CR>
nnoremap <silent> <F12> :bn<CR>
nnoremap <silent> <S-F12> :bp<CR>

" Visual
set showmatch  " Show matching brackets.

let g:ackprg="ack-grep -H --nocolor --nogroup --column"
