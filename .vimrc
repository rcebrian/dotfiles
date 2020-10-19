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
colorscheme jellybeans

" ui
set number
set mouse=a
set showcmd
set cursorline
set wildmenu
set showmatch

" tabs
set tabstop=2
set expandtab
set shiftwidth=2
set smartindent

" search
set incsearch
set hlsearch

" plugins
execute pathogen#infect()

"" nerdtree
let NERDTreeShowHidden=1
autocmd VimEnter * NERDTree | wincmd p
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

"" lightline.vim
let g:lightline = {'colorscheme': 'jellybeans',}

"" rainbow
let g:rainbow_active = 1
let g:rainbow_guifgs = ['RoyalBlue3', 'DarkOrange3', 'DarkOrchid3', 'FireBrick']

"" tabnine
set rtp+=$HOME/.vim/bundle/tabnine-vim

