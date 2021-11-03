set langmap=ФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯ;ABCDEFGHIJKLMNOPQRSTUVWXYZ,фисвуапршолдьтщзйкыегмцчня;abcdefghijklmnopqrstuvwxyz
inoremap jk <esc> " для выхода из режима INSERT

set tabstop=4
set softtabstop=4
set shiftwidth=4
set autoindent
set expandtab
set smarttab
set ai

set showmatch
set hlsearch
set incsearch
set cursorline
set mouse=ar
if !has('nvim')
  set ttymouse=xterm2
endif

set ignorecase " ics - поиск без учёта регистра символов
set number
set laststatus=2
set scrolloff=8
set noswapfile " отключение swap файлы
set clipboard=unnamedplus " для копирования в общих буфер обмена
syntax on

set ttimeoutlen=10 "Понижаем задержку ввода escape последовательностей

filetype plugin indent on "Включает определение типа файла, загрузку...
"... соответствующих ему плагинов и файлов отступов
set encoding=utf-8 "Ставит кодировку UTF-8
set nocompatible "Отключает обратную совместимость с Vi
set conceallevel=1

if !has('gui_running') " lightline settings
  set t_Co=256
endif
let g:lightline = {
      \ 'colorscheme': 'one',
      \ }
set noshowmode

set guifont=DejaVu\ Sans\ Mono\ for\ Powerline\ 12
colorscheme gruvbox
set background=dark

set nofoldenable
filetype plugin on

""""""""""""""""""""""""""""""""""""""""
""
""         PLUGINS(vim-plug)      
""
""""""""""""""""""""""""""""""""""""""""

call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
" Plug 'jiangmiao/auto-pairs'
Plug 'plasticboy/vim-markdown'
Plug 'godlygeek/tabular' "для работы с markdown
" Plug 'iamcco/markdown-preview.vim' "будет паралельно отображаться файл в браузере
Plug 'lervag/vimtex' "для работы с LaTeX
" Plug 'sirver/ultisnips' "для создания сниппетов
Plug 'cespare/vim-toml' "для поддержки синтаксиса toml
" colorscheme
Plug 'morhetz/gruvbox'
Plug 'itchyny/lightline.vim'

call plug#end()

""""""""""""""""""""""""""""""""""""""""
""
""         HOTKEYS(mappings)
""
""""""""""""""""""""""""""""""""""""""""
nnoremap <C-c> "+y
vnoremap <C-c> "+y
map <C-n> :NERDTreeToggle<CR>
nnoremap <F2> :set nonumber!<CR> 
nnoremap <F3> :AirlineToggle<CR> 
nnoremap <F5> :VimtexCompile<CR> 

""""""""""""""""""""""""""""""""""""""""
""
""         PERMISSIONS(let)
""
""""""""""""""""""""""""""""""""""""""""
let g:tex_flavor = 'latex' "Уточняем какой Тех
let g:vimtex_view_method = 'mupdf'
let g:vimtex_quickfix_mode = 0
let g:tex_conceal = 'abdmg' "настраивает маскировку

let g:VM_default_mappings = 0
let g:VM_leader = ','
let g:VM_maps = {}
let g:VM_maps['Find Under']         = ''           " replace C-n
let g:VM_maps['Find Subword Under'] = ''           " replace visual C-n
let g:VM_maps["Select Cursor Down"] = '<C-Down>'      " start selecting down
let g:VM_maps["Select Cursor Up"]   = '<C-Up>'        " start selecting up

" let g:UltiSnipsExpandTrigger = '<tab>'
" let g:UltiSnipsJumpForwardTrigger = '<tab>'
" let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'
" let g:UltiSnipsSnippetDir="~/.vim/UltiSnips"
" let g:UltiSnipsSnippetDirectories = ['UltiSnips']

" let g:mkdp_auto_start = 1 "автоматическое открытие браузера при попытки открыть markdown
