set tabstop=4
set shiftwidth=4
set smarttab
set ai
set expandtab

set showmatch
set hlsearch
set incsearch
set ignorecase

set nocompatible
set ignorecase " ics - поиск без учёта регистра символов
set number
set laststatus=2
syntax on

colorscheme gruvbox
set background=dark

""""""""""""""""""""""""""""""""""""""""
""
""         PLUGINS(vim-plug)      
""
""""""""""""""""""""""""""""""""""""""""

call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'jiangmiao/auto-pairs'
" colorscheme
Plug 'morhetz/gruvbox'

call plug#end()

""""""""""""""""""""""""""""""""""""""""
""
""         HOTKEYS(mappings)
""
""""""""""""""""""""""""""""""""""""""""
 map <C-n> :NERDTreeToggle<CR>
