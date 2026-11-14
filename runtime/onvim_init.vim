" ==============================================================================
"                    OnVim - Modern & Ergonomic Configuration
"                         Path: ~/.config/onvim/init
" ==============================================================================

" --- Основные настройки ---
let mapleader = " "              " Пробел как Leader-клавиша (самый удобный бинд)
let maplocalleader = " "

set encoding=utf-8
set fileencoding=utf-8
set mouse=a                      " Мышь работает везде: клики, скролл, выделение
set clipboard^=unnamed,unnamedplus " Системный буфер обмена (Ctrl+C / Ctrl+V)

" --- Внешний вид и темы ---
syntax on
set termguicolors                " Поддержка 24-битных True Color цветов
set number relativenumber        " Относительные номера строк (удобно для прыжков)
set cursorline                   " Подсветка текущей строки
set scrolloff=8                  " 8 строк запаса сверху/снизу при скролле
set sidescrolloff=8
set signcolumn=yes               " Постоянная колонка слева (без дергания экрана)
set showmatch                    " Подсветка парных скобок
set matchtime=2
set nowrap                       " Длинные строки не переносятся автоматически

" Цветовая схема (современная темная тема из комплекта Vim 9)
silent! colorscheme habamax
if !exists('g:colors_name')
  silent! colorscheme retrobox
endif

" --- Отступы и форматирование ---
set expandtab                    " Заменять табы на пробелы
set tabstop=4                    " Ширина таба — 4 пробела
set shiftwidth=4
set softtabstop=4
set autoindent                   " Автоотступ
set smartindent                  " Умные отступы для C, Python, JS и т.д.

" --- Поиск ---
set ignorecase                   " Регистронезависимый поиск
set smartcase                    " ...но с учетом регистра, если есть заглавные
set hlsearch                     " Подсветка результатов поиска
set incsearch                    " Поиск на лету по мере ввода
set inccommand=nosplit           " Предпросмотр автозамен на лету

" --- Окна и Сплиты ---
set splitbelow                   " Горизонтальный сплит открывается снизу
set splitright                   " Вертикальный сплит открывается справа

" --- История и Undo ---
set undofile                     " Сохранять историю отмен даже после закрытия файла
set undodir=~/.cache/onvim/undo
set history=1000

" --- Всплывающее меню команд и автодополнение ---
set wildmenu
set wildmode=longest:full,full
if exists('+wildoptions')
  set wildoptions=pum,tagfile    " Всплывающее красивое popup-меню для команд (:)
endif
set completeopt=menu,menuone,noselect

" Вставка по Tab в меню автодополнения
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<CR>"

" ==============================================================================
"                     Боковая панель файлов (как в VS Code)
" ==============================================================================
let g:netrw_banner = 0           " Скрыть громоздкий заголовок
let g:netrw_liststyle = 3        " Стиль дерева (Tree view)
let g:netrw_browse_split = 4     " Открывать выбранный файл в предыдущем окне
let g:netrw_altv = 1             " Открывать справа
let g:netrw_winsize = 25         " Ширина проводника — 25% экрана
let g:netrw_keepdir = 1

" Открытие / закрытие боковой панели:
nnoremap <silent> <C-b> :Lexplore<CR>
nnoremap <silent> <leader>e :Lexplore<CR>
nnoremap <silent> <F2> :Lexplore<CR>
command! Tree Lexplore

" ==============================================================================
"                           Удобные горячие клавиши
" ==============================================================================

" Быстрое сохранение (Ctrl+S везде или <Пробел> + w)
nnoremap <C-s> :w<CR>
inoremap <C-s> <Esc>:w<CR>a
nnoremap <leader>w :w<CR>

" Быстрый выход (<Пробел> + q)
nnoremap <leader>q :q<CR>

" Сброс подсветки поиска клавишей Escape
nnoremap <silent> <Esc> :nohlsearch<CR><Esc>

" Навигация между сплитами через Ctrl + h/j/k/l (без лишнего Ctrl+W)
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Создание сплитов: <Пробел> + v (вертикальный), <Пробел> + s (горизонтальный)
nnoremap <leader>v :vsplit<CR>
nnoremap <leader>s :split<CR>
nnoremap <leader>x <C-w>c

" Переключение между открытыми вкладками/файлами (Tab и Shift+Tab в обычном режиме)
nnoremap <Tab> :bnext<CR>
nnoremap <S-Tab> :bprev<CR>
nnoremap <leader>bd :bdelete<CR>

" Перемещение выделенных строк вверх/вниз в визуальном режиме (клавиши J и K)
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

" Сохранение выделения при сдвиге отступов клавишами < и >
vnoremap < <gv
vnoremap > >gv

" Центрирование экрана при поиске и быстром скролле
nnoremap n nzzzv
nnoremap N Nzzzv
nnoremap <C-d> <C-d>zz
nnoremap <C-u> <C-u>zz

" Копирование до конца строки через Y (по аналогии с D и C)
nnoremap Y y$

" ==============================================================================
"                         Красивый статус-лайн
" ==============================================================================
set laststatus=2
function! OnVimMode()
  let l:m = mode()
  if l:m ==# 'n'  | return ' NORMAL ' | endif
  if l:m ==# 'i'  | return ' INSERT ' | endif
  if l:m ==# 'v'  | return ' VISUAL ' | endif
  if l:m ==# 'V'  | return ' V-LINE ' | endif
  if l:m ==# "\<C-v>" | return ' V-BLOCK ' | endif
  if l:m ==# 'c'  | return ' COMMAND ' | endif
  if l:m ==# 'R'  | return ' REPLACE ' | endif
  return ' ' . toupper(l:m) . ' '
endfunction

set statusline=
set statusline+=%#DiffAdd#%{OnVimMode()}%#StatusLine#
set statusline+=\ %f\ %m%r
set statusline+=%=
set statusline+=%y\ 
set statusline+=%#DiffChange#\ %l:%c\ (%p%%)\ %#StatusLine#
