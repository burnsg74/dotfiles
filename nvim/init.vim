" nocompatible needs to be first
set nocompatible

" General Settings 
set nowrap
set encoding=utf8
set backspace=indent,eol,start
set ruler
set showcmd

syntax on
filetype plugin on

" Enable Relative Line Numbering 
set number relativenumber 

" Enable highlighting of the current line
set cursorline

" Set Proper Tabs
set smarttab
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4

" Search options
set incsearch
set hlsearch

" Always display the status line
set laststatus=2

" Move Backup and Cache files to tmp folder
set backup                      
set backupdir=/var/tmp              
set dir=/var/tmp 

let g:python_host_prog='/usr/bin/python2'
let g:python3_host_prog='/usr/bin/python3'
let g:vimwiki_list = [{'path': '~/Documents/wiki/', 'syntax': 'markdown', 'ext': '.md'}]

call plug#begin('~/.config/nvim/plugged')
Plug 'vimwiki/vimwiki'
Plug 'shougo/deoplete.nvim'
Plug 'scrooloose/nerdtree'
Plug 'vim-vdebug/vdebug'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
call plug#end()

" Nerdtree
let NERDTreeQuitOnOpen=1
nnoremap <leader>` :NERDTreeToggle<cr>

" vDebug
let g:vdebug_options = {'ide_key': 'dbgp'}
let g:vdebug_options = {'break_on_open': 0}
let g:vdebug_options = {'server': '127.0.0.1'}
let g:vdebug_options = {'port': '9001'}
