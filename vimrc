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
Bundle 'henrik/vim-yaml-flattener'

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

let g:ackprg="ack-grep -H --nocolor --nogroup --column"


"save code, run ruby, show output in preview window
function! Ruby_eval_vsplit() range
  let src = tempname()
  let dst = tempname()
  execute ": " . a:firstline . "," . a:lastline . "w " . src
  execute ":silent ! ruby " . src . " > " . dst . " 2>&1 "
  execute ":pclose!"
  execute ":redraw!"
  execute ":vsplit"
  execute "normal \<C-W>l"
  execute ":e! " . dst
  execute ":set pvw"
  execute "normal \<C-W>h"
endfunction
vmap <silent> <F7> :call Ruby_eval_vsplit()<CR>
nmap <silent> <F7> mzggVG<F7>`z
imap <silent> <F7> <Esc><F7>a
map <silent> <S-F7> <C-W>l:bw<CR>
imap <silent> <S-F7> <Esc><S-F7>a
