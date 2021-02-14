"   ██╗   ██╗██╗███╗   ███╗██████╗  ██████╗
"   ██║   ██║██║████╗ ████║██╔══██╗██╔════╝
"   ██║   ██║██║██╔████╔██║██████╔╝██║
"   ╚██╗ ██╔╝██║██║╚██╔╝██║██╔══██╗██║
" ██╗╚████╔╝ ██║██║ ╚═╝ ██║██║  ██║╚██████╗
" ╚═╝ ╚═══╝  ╚═╝╚═╝     ╚═╝╚═╝  ╚═╝ ╚═════╝

" general
set nocompatible
if !&readonly
  set fileencoding=utf-8
endif


" colors
syntax on
" colorscheme afterglow

" ui
set number
set mouse=a
set showcmd
set cursorline
set wildmenu
set showmatch

" tabs
" set tabstop=2
" set expandtab
" set shiftwidth=2
set smartindent

" search
set incsearch
set hlsearch

" vim plug
call plug#begin('~/.vim/plugged')

" IDE
Plug 'easymotion/vim-easymotion'
Plug 'scrooloose/nerdtree'
Plug 'christoomey/vim-tmux-navigator'
Plug 'itchyny/lightline.vim'
Plug 'airblade/vim-gitgutter'
Plug 'danilo-augusto/vim-afterglow'

call plug#end()

let NERDTreeQuitOnOpen=1

let mapleader=" "
nmap <Leader>s <Plug>(easymotion-s2)
nmap <Leader>nt :NERDTreeFind<CR>

nmap <Leader>w :w<CR>
nmap <Leader>q :q<CR>

set laststatus=2
let g:airline_theme='afterglow'

" let g:gitgutter_enabled=0
set updatetime=100
