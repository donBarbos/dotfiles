set langmap=ФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯ;ABCDEFGHIJKLMNOPQRSTUVWXYZ,фисвуапршолдьтщзйкыегмцчня;abcdefghijklmnopqrstuvwxyz

set tabstop=4
set shiftwidth=4
set smarttab
set ai
set expandtab

set showmatch
set hlsearch
set incsearch
set ignorecase

set ignorecase " ics - поиск без учёта регистра символов
set number
set laststatus=2
set noswapfile " отключение swap файлы
syntax on

filetype plugin indent on "Включает определение типа файла, загрузку...
"... соответствующих ему плагинов и файлов отступов
set encoding=utf-8 "Ставит кодировку UTF-8
set nocompatible "Отключает обратную совместимость с Vi

set guifont=/usr/share/fonts/TTF/fa-regular-400.ttf:h16
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
Plug 'vim-airline/vim-airline' "доп. информацию (похоже на OhMyTmux)
Plug 'ryanoasis/vim-devicons' "подключение красивых иконок
Plug 'lervag/vimtex' "для работы с LaTeX
" colorscheme
Plug 'morhetz/gruvbox'

call plug#end()

""""""""""""""""""""""""""""""""""""""""
""
""         HOTKEYS(mappings)
""
""""""""""""""""""""""""""""""""""""""""
map <C-n> :NERDTreeToggle<CR>
nnoremap <F2> :set nonumber!<CR> 

""""""""""""""""""""""""""""""""""""""""
""
""         PERMISSIONS(let)
""
""""""""""""""""""""""""""""""""""""""""
let g:tex_flavor = 'latex' "Уточняем какой Тех
let g:vimtex_quickfix_mode = 0
