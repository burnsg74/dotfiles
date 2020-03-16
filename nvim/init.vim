" nocompatible needs to be first
set nocompatible

" General Settings 
set nowrap
set encoding=utf8
set backspace=indent,eol,start
set ruler
set showcmd
set nofoldenable

syntax on
filetype plugin on

" Enable Relative Line Numbering 
set number relativenumber 
noremap <leader># :set invnumber invrelativenumber<CR>

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

set clipboard=unnamed

let g:python_host_prog='/usr/bin/python2'
let g:python3_host_prog='/usr/bin/python3'

call plug#begin('~/.config/nvim/plugged')
Plug 'vimwiki/vimwiki'
Plug 'shougo/deoplete.nvim'
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'vim-vdebug/vdebug'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
" tabular plugin is used to format tables
Plug 'godlygeek/tabular'
" JSON front matter highlight plugin
Plug 'elzr/vim-json'
" Markdown 
Plug 'plasticboy/vim-markdown'
Plug 'iamcco/markdown-preview.nvim', {'do': 'cd app & yarn install'}
Plug 'vim-syntastic/syntastic'
Plug 'posva/vim-vue'
Plug 'airblade/vim-gitgutter'
call plug#end()

" Vim Wiki
let g:vimwiki_list = [{'path': '~/notes', 'syntax': 'markdown', 'ext': '.md'}]

" Nerdtree
let NERDTreeQuitOnOpen=1
nnoremap <leader>` :NERDTreeToggle<cr>

" vDebug
let g:vdebug_options = {'ide_key': 'dbgp'}
let g:vdebug_options = {'break_on_open': 0}
let g:vdebug_options = {'server': '127.0.0.1'}
let g:vdebug_options = {'port': '9001'}

let g:mkdp_browser = 'firefox' 

" linting
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_javascript_eslint_exe = 'npm run lint --'
