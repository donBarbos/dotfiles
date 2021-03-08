set langmap=ФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯ;ABCDEFGHIJKLMNOPQRSTUVWXYZ,фисвуапршолдьтщзйкыегмцчня;abcdefghijklmnopqrstuvwxyz
" setxkbmap -option caps:escape

set tabstop=4
set shiftwidth=4
set smarttab
set ai
set expandtab

set showmatch
set hlsearch
set incsearch
set cursorline
set mouse=ar

set ignorecase " ics - поиск без учёта регистра символов
set number
set laststatus=2
set noswapfile " отключение swap файлы
set clipboard=unnamedplus " для копирования в общих буфер обмена
syntax on

set ttimeoutlen=10 "Понижаем задержку ввода escape последовательностей

filetype plugin indent on "Включает определение типа файла, загрузку...
"... соответствующих ему плагинов и файлов отступов
set encoding=utf-8 "Ставит кодировку UTF-8
set nocompatible "Отключает обратную совместимость с Vi
set conceallevel=1

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
Plug 'jiangmiao/auto-pairs'
Plug 'vim-airline/vim-airline' "доп. информацию (похоже на OhMyTmux)
Plug 'https://github.com/ryanoasis/vim-devicons' "emoji for vim-airline
Plug 'https://github.com/adelarsq/vim-devicons-emoji'
Plug 'powerline/powerline'
Plug 'ryanoasis/vim-devicons' "подключение красивых иконок
Plug 'godlygeek/tabular' "для работы с markdown
Plug 'plasticboy/vim-markdown'
Plug 'iamcco/markdown-preview.vim' "будет паралельно отображаться файл в браузере
Plug 'junegunn/vim-github-dashboard' "Обзор событий GitHub :GHD! matz
Plug 'junegunn/vim-emoji' " emoji for GitHub
Plug 'lervag/vimtex' "для работы с LaTeX
Plug 'sirver/ultisnips' "для создания сниппетов
" colorscheme
Plug 'morhetz/gruvbox'

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

let g:UltiSnipsExpandTrigger = '<tab>'
let g:UltiSnipsJumpForwardTrigger = '<tab>'
let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'
let g:UltiSnipsSnippetDir="~/.vim/UltiSnips"
let g:UltiSnipsSnippetDirectories = ['UltiSnips']

let g:mkdp_auto_start = 1 "автоматическое открытие браузера при попытки открыть markdown
let g:Powerline_symbols = 'unicode'
let g:airline_powerline_fonts=1
let g:airline_symbols_ascii = 1
let g:airline#parts#ffenc#skip_expected_string='utf-8[unix]'
