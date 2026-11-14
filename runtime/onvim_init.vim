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
set number relativenumber
set cursorline
set scrolloff=8
set sidescrolloff=8
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
"                           Тема и Оформление (Grey / Charcoal)
" ==============================================================================
set background=dark

" Основная тема — темная графитово-серая Habamax
silent! colorscheme habamax
if !exists('g:colors_name')
  silent! colorscheme retrobox
endif

" Статус-лайн в строгих серых тонах (без синего цвета)
let g:airline_powerline_fonts = 1
let g:airline_theme = 'base16_grayscale_dark'
let g:airline#extensions#tabline#enabled = 0 " Используем buftabline для вкладок

" Настройка верхних вкладок (Buftabline)
let g:buftabline_numbers = 2
let g:buftabline_indicators = 1
let g:buftabline_separators = 1

" Подгонка интерфейса под глубокий серый стиль (Charcoal / Monochrome)
function! s:apply_grey_theme() abort
  " Вкладки сверху
  hi! BufTabLineCurrent guifg=#f0f0f0 guibg=#383838 gui=bold ctermfg=255 ctermbg=237
  hi! BufTabLineActive  guifg=#bbbbbb guibg=#282828 ctermfg=250 ctermbg=235
  hi! BufTabLineHidden  guifg=#707070 guibg=#1c1c1c ctermfg=242 ctermbg=234
  hi! BufTabLineFill    guifg=NONE    guibg=#141414 ctermbg=233
  " Боковая панель NERDTree
  hi! NERDTreeDir       guifg=#d0d0d0 gui=bold ctermfg=252
  hi! NERDTreeDirSlash  guifg=#888888 ctermfg=245
  hi! NERDTreeFile      guifg=#b8b8b8 ctermfg=249
  hi! NERDTreeCWD       guifg=#e0e0e0 gui=bold ctermfg=254
  " Курсорная строка и номера строк
  hi! CursorLine        guibg=#252525 ctermbg=235
  hi! CursorLineNr      guifg=#e5e5e5 guibg=#252525 gui=bold ctermfg=254
  hi! LineNr            guifg=#5e5e5e ctermfg=240
  hi! SignColumn        guibg=#1c1c1c ctermbg=234
  " Меню автодополнения (Popup Menu)
  hi! Pmenu             guifg=#cccccc guibg=#262626 ctermfg=251 ctermbg=235
  hi! PmenuSel          guifg=#ffffff guibg=#484848 gui=bold ctermfg=255 ctermbg=239
  hi! PmenuSbar         guibg=#333333 ctermbg=236
  hi! PmenuThumb        guibg=#666666 ctermbg=242
  " Дашборд
  hi! StartifyHeader    guifg=#a8a8a8 gui=bold ctermfg=248
  hi! StartifySection   guifg=#c4c4c4 gui=bold ctermfg=251
  hi! StartifyFile      guifg=#e2e2e2 ctermfg=253
  hi! StartifyBracket   guifg=#707070 ctermfg=242
  hi! StartifyNumber    guifg=#9e9e9e ctermfg=247
  hi! StartifyPath      guifg=#787878 ctermfg=243
endfunction

augroup OnVimGreyTheme
  au!
  autocmd ColorScheme * call s:apply_grey_theme()
augroup END

call s:apply_grey_theme()

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
