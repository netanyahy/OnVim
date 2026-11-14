" ==============================================================================
"               ⚡ OnVim - The Modern IDE Fork (LazyVim Style) ⚡
"                         Path: ~/.config/onvim/init
" ==============================================================================

" --- Настройка путей OnVim ---
set runtimepath^=~/.config/onvim
set runtimepath+=~/.config/onvim/after
set packpath^=~/.config/onvim

" --- Базовые настройки ---
let mapleader = " "
let maplocalleader = " "

set encoding=utf-8
set fileencoding=utf-8
set mouse=a
set clipboard^=unnamed,unnamedplus
set termguicolors
set number norelativenumber
set cursorline

" Залитый прямоугольный блочный курсор во всех режимах (Normal, Insert, Visual)
set guicursor=a:block-Cursor
hi Cursor guifg=bg guibg=fg

" Поддержка русской раскладки в обычном режиме (h/j/k/l, w, q, и двоеточие : работают на русском)
set langmap=ФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯ;ABCDEFGHIJKLMNOPQRSTUVWXYZ,фисвуапршолдьтщзйкыегмцчня;abcdefghijklmnopqrstuvwxyz,Ж;:
nnoremap Ж :
nnoremap ж :
vnoremap Ж :
vnoremap ж :

" Быстрая навигация в режиме вставки (Insert mode) без необходимости тянуться к стрелкам
inoremap <C-h> <Left>
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-l> <Right>

" Избегаем зависаний на сообщениях
set shortmess+=c
set shortmess+=F
set cmdheight=1

set scrolloff=3
set sidescrolloff=5

" Отключение звуковых сигналов (bell / пищание)
set noerrorbells
set novisualbell
set t_vb=

" Свободный скролл колёсиком мыши
nnoremap <ScrollWheelDown> 3<C-e>
nnoremap <ScrollWheelUp> 3<C-y>
vnoremap <ScrollWheelDown> 3<C-e>
vnoremap <ScrollWheelUp> 3<C-y>
inoremap <ScrollWheelDown> <C-o>3<C-e>
inoremap <ScrollWheelUp> <C-o>3<C-y>
set signcolumn=yes
set showmatch
set nowrap
set splitbelow splitright
set undofile
set undodir=~/.cache/onvim/undo
set history=1000

" --- Отступы ---
set expandtab tabstop=4 shiftwidth=4 softtabstop=4 autoindent smartindent

" --- Поиск ---
set ignorecase smartcase hlsearch incsearch

" ==============================================================================
"                  Встроенный менеджер плагинов (OnVim Plug)
" ==============================================================================
call plug#begin('~/.local/share/onvim/plugged')

" --- UI & Внешний вид (LazyVim Style) ---
Plug 'catppuccin/vim', { 'as': 'catppuccin' } " Неоновая стильная тема Catppuccin
Plug 'vim-airline/vim-airline'                 " Статус-лайн в стиле Lualine
Plug 'vim-airline/vim-airline-themes'
Plug 'ap/vim-buftabline'                      " Вкладки открытых файлов сверху (Bufferline)
Plug 'preservim/nerdtree'                     " Боковая панель файлов (VS Code sidebar)
Plug 'ryanoasis/vim-devicons'                 " Иконки файлов и папок
Plug 'mhinz/vim-startify'                     " Красивый стартовый экран (Dashboard)

" --- Редактирование & Эргономика ---
Plug 'jiangmiao/auto-pairs'                   " Автозакрытие скобок (), [], {}, \"\", ''
Plug 'tpope/vim-commentary'                   " Быстрое комментирование строк (gcc)

" --- Поддержка языков (Python, JS, Java) & LSP ---
Plug 'sheerun/vim-polyglot'                   " Полная подсветка синтаксиса (Python, JS/TS, Java...)
Plug 'prabirshrestha/vim-lsp'                 " Полноценный LSP клиент
Plug 'mattn/vim-lsp-settings'                 " Автоустановка серверов LSP (Python, JS, Java)
Plug 'prabirshrestha/asyncomplete.vim'        " Асинхронное автодополнение
Plug 'prabirshrestha/asyncomplete-lsp.vim'    " Автодополнение от серверов LSP

call plug#end()

" ==============================================================================
"                  Настройка тем и интерфейса (Theme Switcher)
" ==============================================================================
set background=dark

let g:onvim_themes = [
\ {'name': 'habamax',              'airline': 'base16_grayscale_dark',      'desc': 'Графит / Charcoal dark (по умолчанию)'},
\ {'name': 'catppuccin_mocha',     'airline': 'catppuccin_mocha',           'desc': 'Catppuccin Mocha (неоновый темный)'},
\ {'name': 'catppuccin_macchiato', 'airline': 'catppuccin_macchiato',       'desc': 'Catppuccin Macchiato (мягкий темный)'},
\ {'name': 'catppuccin_frappe',    'airline': 'catppuccin_frappe',          'desc': 'Catppuccin Frappe (приглушенный серый)'},
\ {'name': 'retrobox',             'airline': 'base16_gruvbox_dark_medium', 'desc': 'Retrobox (Gruvbox ретро-темный)'},
\ {'name': 'catppuccin_latte',     'airline': 'catppuccin_latte',           'desc': 'Catppuccin Latte (светлая тема)'},
\ {'name': 'quiet',                'airline': 'monochrome',                 'desc': 'Quiet (минималистичный монохром)'},
\ {'name': 'desert',               'airline': 'desertink',                  'desc': 'Desert (классическая легендарная)'},
\ {'name': 'sorbet',               'airline': 'violet',                     'desc': 'Sorbet (темно-ягодная)'},
\ {'name': 'industry',             'airline': 'dark',                       'desc': 'Industry (темный хай-тек)'},
\ ]

let s:theme_config_file = expand('~/.config/onvim/current_theme')

function! OnVimApplyTheme(theme_name) abort
  let l:target_airline = 'base16_grayscale_dark'
  for item in g:onvim_themes
    if item.name ==# a:theme_name
      let l:target_airline = item.airline
      break
    endif
  endfor

  " Применяем тему оформления (родные цвета темы для CursorLine, синтаксиса и фона)
  execute 'colorscheme ' . a:theme_name

  " Применяем соответствующую тему статуслайна Airline
  execute 'silent! AirlineTheme ' . l:target_airline

  " Сохраняем тему, чтобы выбор сохранялся при последующих запусках
  call writefile([a:theme_name], s:theme_config_file)
endfunction

function! OnVimSelectTheme() abort
  echo "==================== Выбор темы OnVim ===================="
  let l:i = 1
  for item in g:onvim_themes
    echo printf(" [%2d] %-20s - %s", l:i, item.name, item.desc)
    let l:i += 1
  endfor
  echo "=========================================================="
  let l:choice = input("Выберите номер темы [1-10] (Enter для отмены): ")
  let l:idx = str2nr(l:choice) - 1
  if l:idx >= 0 && l:idx < len(g:onvim_themes)
    let l:th = g:onvim_themes[l:idx].name
    call OnVimApplyTheme(l:th)
    redraw
    echo "\nТема успешно изменена на: " . l:th
  else
    echo "\nВыбор отменен."
  endif
endfunction

command! -nargs=0 Themes call OnVimSelectTheme()
command! -nargs=1 -complete=color Theme call OnVimApplyTheme(<f-args>)
nnoremap <silent> <leader>th :Themes<CR>

" Статус-лайн в стиле LazyVim
let g:airline_powerline_fonts = 1
let g:airline_theme = 'base16_grayscale_dark'
let g:airline#extensions#tabline#enabled = 0 " Используем buftabline для вкладок
let g:airline_skip_empty_sections = 1

" Чистый текст режима без сокращения в 'N...'
let g:airline_mode_map = {
    \ '__'     : '-',
    \ 'c'      : 'COMMAND',
    \ 'i'      : 'INSERT',
    \ 'ic'     : 'INSERT',
    \ 'ix'     : 'INSERT',
    \ 'n'      : 'NORMAL',
    \ 'multi'  : 'MULTI',
    \ 'ni'     : 'NORMAL',
    \ 'no'     : 'OP',
    \ 'R'      : 'REPLACE',
    \ 'Rv'     : 'V-REPLACE',
    \ 's'      : 'SELECT',
    \ 'S'      : 'S-LINE',
    \ ''     : 'S-BLOCK',
    \ 't'      : 'TERMINAL',
    \ 'v'      : 'VISUAL',
    \ 'V'      : 'V-LINE',
    \ ''     : 'V-BLOCK',
    \ }

" Лаконичная правая часть: процент и строка:колонка (без каши и обрезания)
let g:airline_section_y = ''
let g:airline_section_z = '%3p%% %l:%c'

" Настройка верхних вкладок (Buftabline)
let g:buftabline_numbers = 2
let g:buftabline_indicators = 1
let g:buftabline_separators = 1

" Загрузка сохраненной темы пользователя
let s:init_theme = 'habamax'
if filereadable(s:theme_config_file)
  let s:saved_lines = readfile(s:theme_config_file)
  if len(s:saved_lines) > 0 && !empty(trim(s:saved_lines[0]))
    let s:init_theme = trim(s:saved_lines[0])
  endif
endif
silent! call OnVimApplyTheme(s:init_theme)
if !exists('g:colors_name')
  silent! call OnVimApplyTheme('habamax')
endif

" ==============================================================================
"                      Стартовый экран (Dashboard / Startify)
" ==============================================================================
let g:startify_custom_header = [
\ '   ██████╗ ███╗   ██╗██╗   ██╗██╗███╗   ███╗',
\ '  ██╔═══██╗████╗  ██║██║   ██║██║████╗ ████║',
\ '  ██║   ██║██╔██╗ ██║██║   ██║██║██╔████╔██║',
\ '  ██║   ██║██║╚██╗██║╚██╗ ██╔╝██║██║╚██╔╝██║',
\ '  ╚██████╔╝██║ ╚████║ ╚████╔╝ ██║██║ ╚═╝ ██║',
\ '   ╚═════╝ ╚═╝  ╚═══╝  ╚═══╝  ╚═╝╚═╝     ╚═╝',
\ '        ⚡ The Ultimate Modern IDE Fork ⚡    ',
\ '               by netanyahy                  ',
\ '',
\ ]

let g:startify_lists = [
\ { 'type': 'files',     'header': ['   📂 Недавние файлы:'] },
\ { 'type': 'dir',       'header': ['   📁 Текущая папка: '. getcwd()] },
\ { 'type': 'bookmarks', 'header': ['   🔖 Закладки:'] },
\ { 'type': 'commands',  'header': ['   ⚡ Команды:'] },
\ ]

let g:startify_commands = [
\ {'n': ['Новый файл', 'enew']},
\ {'e': ['Проводник файлов (Ctrl+B)', 'NERDTreeToggle']},
\ {'p': ['Менеджер плагинов', 'PlugStatus']},
\ {'q': ['Выход', 'quit']},
\ ]

" ==============================================================================
"                      Проводник файлов (NERDTree / Sidebar)
" ==============================================================================
let g:NERDTreeShowHidden = 1
let g:NERDTreeMinimalUI = 1
let g:NERDTreeWinSize = 28
let g:NERDTreeIgnore = ['^\.git$', '^\.cache$', '^__pycache__$']

" Открытие/закрытие боковой панели как в VS Code:
nnoremap <silent> <C-b> :NERDTreeToggle<CR>
nnoremap <silent> <leader>e :NERDTreeToggle<CR>
nnoremap <silent> <F2> :NERDTreeToggle<CR>
command! Tree NERDTreeToggle

" ==============================================================================
"                  LSP (Python, JavaScript/TypeScript, Java)
" ==============================================================================
let g:lsp_diagnostics_enabled = 1
let g:lsp_diagnostics_echo_cursor = 1
let g:lsp_signs_enabled = 1
let g:lsp_highlights_enabled = 1
let g:lsp_text_edit_enabled = 1
let g:lsp_preview_float = 1
let g:lsp_diagnostics_float_cursor = 1
let g:lsp_async_completion = 1
let g:lsp_settings_warn_missing_server = 0

" Автоматическая регистрация серверов автодополнения и анализа:
" 1. Python (pyright)
if executable('pyright-langserver')
  au User lsp_setup call lsp#register_server({
    \ 'name': 'pyright',
    \ 'cmd': {server_info->['pyright-langserver', '--stdio']},
    \ 'allowlist': ['python'],
    \ })
endif

" 2. JavaScript / TypeScript (typescript-language-server)
if executable('typescript-language-server')
  au User lsp_setup call lsp#register_server({
    \ 'name': 'typescript-language-server',
    \ 'cmd': {server_info->['typescript-language-server', '--stdio']},
    \ 'allowlist': ['javascript', 'javascriptreact', 'typescript', 'typescriptreact'],
    \ })
endif

" 3. Java (jdtls / vim-lsp-settings)
if executable('jdtls')
  au User lsp_setup call lsp#register_server({
    \ 'name': 'jdtls',
    \ 'cmd': {server_info->['jdtls']},
    \ 'allowlist': ['java'],
    \ })
endif

" Горячие клавиши LSP:
function! s:on_lsp_buffer_enabled() abort
  setlocal omnifunc=lsp#complete
  nmap <buffer> gd <plug>(lsp-definition)
  nmap <buffer> gr <plug>(lsp-references)
  nmap <buffer> gi <plug>(lsp-implementation)
  nmap <buffer> K  <plug>(lsp-hover)
  nmap <buffer> <leader>rn <plug>(lsp-rename)
  nmap <buffer> <leader>ca <plug>(lsp-code-action)
  nmap <buffer> [d <plug>(lsp-previous-diagnostic)
  nmap <buffer> ]d <plug>(lsp-next-diagnostic)
  nmap <buffer> <leader>f  <plug>(lsp-document-format)
endfunction

augroup lsp_install
  au!
  autocmd User lsp_buffer_enabled call s:on_lsp_buffer_enabled()
augroup END

" ==============================================================================
"               Мгновенное автодополнение на лету (Asyncomplete)
" ==============================================================================
let g:asyncomplete_auto_popup = 1
let g:asyncomplete_popup_delay = 30
let g:asyncomplete_min_chars = 1
let g:asyncomplete_auto_completeopt = 0

set wildmenu
set wildmode=longest:full,full
if exists('+wildoptions')
  set wildoptions=pum,tagfile
endif
set completeopt=menu,menuone,noinsert,noselect

inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <CR>    pumvisible() ? asyncomplete#close_popup() : "\<CR>"

" ==============================================================================
"                           Горячие клавиши
" ==============================================================================

" Быстрое сохранение (Ctrl+S везде или Пробел + w)
nnoremap <C-s> :w<CR>
inoremap <C-s> <Esc>:w<CR>a
nnoremap <leader>w :w<CR>

" Быстрый выход (Пробел + q)
nnoremap <leader>q :q<CR>

" Сброс подсветки поиска клавишей Escape
nnoremap <silent> <Esc> :nohlsearch<CR><Esc>

" Навигация между сплитами через Ctrl + h/j/k/l
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Создание сплитов: Пробел + v, Пробел + s, Пробел + x
nnoremap <leader>v :vsplit<CR>
nnoremap <leader>s :split<CR>
nnoremap <leader>x <C-w>c

" Переключение вкладок сверху (Tab и Shift+Tab)
nnoremap <Tab> :bnext<CR>
nnoremap <S-Tab> :bprev<CR>
nnoremap <leader>bd :bdelete<CR>

" Перемещение строк вверх/вниз в визуальном режиме (J и K)
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

" Сохранение выделения при сдвиге отступов
vnoremap < <gv
vnoremap > >gv

" Центрирование при поиске и скролле
nnoremap n nzzzv
nnoremap N Nzzzv
nnoremap <C-d> <C-d>zz
nnoremap <C-u> <C-u>zz
nnoremap Y y$
