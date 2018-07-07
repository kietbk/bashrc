set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

"=====================================================
"" Vundle settings
"=====================================================
call vundle#begin()

    Plugin 'VundleVim/Vundle.vim'               " let Vundle manage Vundle, required

call vundle#end()                           " required
filetype on
filetype plugin on
filetype plugin indent on

"=====================================================
"" General settings
"=====================================================
syntax enable                               " syntax highlight

set t_Co=256                                " set 256 colors
colorscheme wombat256mod                    " set color scheme

set number                                  " show line numbers
set ruler
set ttyfast                                 " terminal acceleration

set tabstop=4                               " 4 whitespaces for tabs visual presentation
set shiftwidth=4                            " shift lines by 4 spaces
set smarttab                                " set tabs for a shifttabs logic
set expandtab                               " expand tabs into spaces
set autoindent                              " indent when moving to the next line while writing code

set cursorline                              " shows line under the cursor's line
set showmatch                               " shows matching part of bracket pairs (), [], {}

set enc=utf-8	                            " utf-8 by default

set nobackup 	                            " no backup files
set nowritebackup                           " only in case you don't want a backup file while editing
set noswapfile 	                            " no swap files

set backspace=indent,eol,start              " backspace removes all (indents, EOLs, start) What is start?

set scrolloff=10                            " let 10 lines before/after cursor during scroll

set clipboard=unnamed                       " use system clipboard

set exrc                                    " enable usage of additional .vimrc files from working directory
set secure                                  " prohibit .vimrc files to execute shell, create files, etc...
set relativenumber
" Additional mappings for Esc (useful for MacBook with touch bar)
inoremap jj <Esc>

"=====================================================
"" Tabs / Buffers settings
"=====================================================
set completeopt-=preview
tab sball
set switchbuf=useopen
set laststatus=2
nmap <F9> :bprev<CR>
nmap <F10> :bnext<CR>
nmap <silent> <leader>q :SyntasticCheck # <CR> :bp <BAR> bd #<CR>

"" Search settings
"=====================================================
set incsearch	                            " incremental search

"=====================================================

nmap ,, :q<CR>
nmap ,q :q!<CR>
nmap ,w :w<CR>
nmap j jzz
nmap k kzz
imap <C-A> <Home>
imap <C-E> <End>
imap ,3 #include <.h><C-[>Ba
imap ,m <C-[>:read !sed -n 1,6p ~/.pattern_c <CR>kkka    
imap ,f <C-[>:read !sed -n 7,11p ~/.pattern_c <CR>kkkwa
imap ,w <C-[>:read !sed -n 12,16p ~/.pattern_c <CR>kkkwa
imap ,i <C-[>:read !sed -n 17,20p ~/.pattern_c <CR>kkkwa
set wrap
set undofile
set undodir=~/.vim/undodir
set enc=utf-8
set fenc=utf-8
set termencoding=utf-8
iabbrev kiet Truong Van Kiet
" disable vi compatibility (emulation of old bugs)
set t_Co=256
syntax on
" colorscheme wombat256
" turn line numbers on
set number
" highlight matching braces
set showmatch
" intelligent comments
set comments=sl:/*,mb:\ *,elx:\ */

