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
syntax enable
filetype plugin indent on

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

" --- Настройки иконок (Tux Penguin  вместо лого дистрибутивов) ---
let g:DevIconsEnableDistro = 0
function! WebDevIconsGetFileFormatSymbol(...) abort
  if &fileformat ==? 'dos'
    return ''
  elseif &fileformat ==? 'mac'
    return ''
  else
    return ''
  endif
endfunction

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
Plug 'uiiaoo/java-syntax.vim'                 " Максимально детальный синтаксис Java (VS Code Style)
Plug 'prabirshrestha/vim-lsp'                 " Полноценный LSP клиент
Plug 'mattn/vim-lsp-settings'                 " Автоустановка серверов LSP (Python, JS, Java)
Plug 'prabirshrestha/asyncomplete.vim'        " Асинхронное автодополнение
Plug 'prabirshrestha/asyncomplete-lsp.vim'    " Автодополнение от серверов LSP
Plug 'prabirshrestha/asyncomplete-buffer.vim' " Автодополнение слов из буфера
Plug 'prabirshrestha/asyncomplete-file.vim'   " Автодополнение путей к файлам

call plug#end()

" Заменяем лого дистрибутива на легендарного Tux (Linux Penguin )
function! WebDevIconsGetFileFormatSymbol(...) abort
  if &fileformat ==? 'dos'
    return ''
  elseif &fileformat ==? 'mac'
    return ''
  else
    return ''
  endif
endfunction

" ==============================================================================
"                  Настройка тем и интерфейса (Theme Switcher)
" ==============================================================================
set background=dark

let g:onvim_themes = [
\ {'name': 'habamax',              'airline': 'base16_grayscale_dark',      'bg': 'dark',  'desc': 'Графит / Charcoal dark (по умолчанию)'},
\ {'name': 'catppuccin_mocha',     'airline': 'catppuccin_mocha',           'bg': 'dark',  'desc': 'Catppuccin Mocha (неоновый темный)'},
\ {'name': 'catppuccin_macchiato', 'airline': 'catppuccin_macchiato',       'bg': 'dark',  'desc': 'Catppuccin Macchiato (мягкий темный)'},
\ {'name': 'catppuccin_frappe',    'airline': 'catppuccin_frappe',          'bg': 'dark',  'desc': 'Catppuccin Frappe (приглушенный серый)'},
\ {'name': 'tokyonight',           'airline': 'tokyonight',                 'bg': 'dark',  'desc': 'Tokyo Night (неоновая японская ночь)'},
\ {'name': 'tokyonight-storm',     'airline': 'tokyonight',                 'bg': 'dark',  'desc': 'Tokyo Night Storm (глубокий синий)'},
\ {'name': 'tokyonight-moon',      'airline': 'tokyonight',                 'bg': 'dark',  'desc': 'Tokyo Night Moon (мягкая лунная ночь)'},
\ {'name': 'onedark',              'airline': 'onedark',                    'bg': 'dark',  'desc': 'One Dark Pro (легендарная VS Code / Atom)'},
\ {'name': 'nord',                 'airline': 'base16_nord',                'bg': 'dark',  'desc': 'Nord (арктический сине-серый)'},
\ {'name': 'dracula',              'airline': 'base16_dracula',             'bg': 'dark',  'desc': 'Dracula (культовый вампирский контраст)'},
\ {'name': 'retrobox',             'airline': 'base16_gruvbox_dark_medium', 'bg': 'dark',  'desc': 'Retrobox (Gruvbox ретро-темный)'},
\ {'name': 'everforest',           'airline': 'base16_gruvbox_dark_medium', 'bg': 'dark',  'desc': 'Everforest (природный хвойный зеленый)'},
\ {'name': 'rose-pine',            'airline': 'base16_horizon_dark',        'bg': 'dark',  'desc': 'Rosé Pine (эстетичный пастельный ретро)'},
\ {'name': 'lunaperche',           'airline': 'dark',                       'bg': 'dark',  'desc': 'Luna Perche (глубокий контраст от Брэма)'},
\ {'name': 'wildcharm',            'airline': 'base16_solarized_dark',      'bg': 'dark',  'desc': 'Wild Charm (теплый современный темный)'},
\ {'name': 'zaibatsu',             'airline': 'base16_google_dark',         'bg': 'dark',  'desc': 'Zaibatsu (киберпанк терминал)'},
\ {'name': 'sorbet',               'airline': 'violet',                     'bg': 'dark',  'desc': 'Sorbet (темно-ягодная)'},
\ {'name': 'industry',             'airline': 'dark',                       'bg': 'dark',  'desc': 'Industry (темный хай-тек)'},
\ {'name': 'desert',               'airline': 'desertink',                  'bg': 'dark',  'desc': 'Desert (классическая легендарная)'},
\ {'name': 'quiet',                'airline': 'monochrome',                 'bg': 'dark',  'desc': 'Quiet (минималистичный монохром)'},
\ {'name': 'catppuccin_latte',     'airline': 'catppuccin_latte',           'bg': 'light', 'desc': 'Catppuccin Latte (светлая пастельная)'},
\ {'name': 'tokyonight-day',       'airline': 'base16_one_light',           'bg': 'light', 'desc': 'Tokyo Night Day (светлая чистая тема)'},
\ ]

let s:theme_config_file = expand('~/.config/onvim/current_theme')

function! OnVimApplyTheme(theme_name) abort
  let l:target_airline = 'base16_grayscale_dark'
  let l:theme_bg = 'dark'

  for item in g:onvim_themes
    if item.name ==# a:theme_name
      let l:target_airline = item.airline
      let l:theme_bg = get(item, 'bg', 'dark')
      break
    endif
  endfor

  " Устанавливаем фоновый режим (dark / light)
  let &background = l:theme_bg

  " Применяем цветовую схему
  execute 'colorscheme ' . a:theme_name

  " Обновляем глобальную переменную темы Airline
  let g:airline_theme = l:target_airline

  " Применяем тему Airline, если плагин уже загружен
  if exists(':AirlineTheme')
    execute 'silent! AirlineTheme ' . l:target_airline
    silent! AirlineRefresh
  endif

  " Сохраняем надежный прямоугольный блочный курсор во всех режимах
  set guicursor=a:block-Cursor
  hi! Cursor guifg=bg guibg=fg

  " Контрастная подсветка вкладок файлов buftabline
  if &background ==# 'dark'
    hi! BufTabLineCurrent gui=bold guifg=#ffffff guibg=#3b4252 ctermfg=255 ctermbg=238
    hi! BufTabLineActive  gui=NONE guifg=#b0b8c4 guibg=#282c34 ctermfg=250 ctermbg=236
    hi! BufTabLineHidden  gui=NONE guifg=#6c7689 guibg=#1e222b ctermfg=242 ctermbg=234
    hi! BufTabLineFill    gui=NONE guifg=NONE    guibg=#16181f ctermbg=233
  else
    hi! BufTabLineCurrent gui=bold guifg=#1a1a1a guibg=#d0d7de ctermfg=16 ctermbg=253
    hi! BufTabLineActive  gui=NONE guifg=#333333 guibg=#e1e4e8 ctermfg=238 ctermbg=254
    hi! BufTabLineHidden  gui=NONE guifg=#666666 guibg=#eaeef2 ctermfg=244 ctermbg=255
    hi! BufTabLineFill    gui=NONE guifg=NONE    guibg=#f6f8fa ctermbg=255
  endif

  " Сохраняем тему, чтобы выбор сохранялся при последующих запусках
  call writefile([a:theme_name], s:theme_config_file)
endfunction

function! OnVimSelectTheme() abort
  echo "==================== Выбор темы OnVim ===================="
  let l:current = get(g:, 'colors_name', '')
  let l:i = 1
  for item in g:onvim_themes
    let l:mark = (item.name ==# l:current) ? ' [✓]' : '    '
    echo printf(" %s [%2d] %-20s - %s", l:mark, l:i, item.name, item.desc)
    let l:i += 1
  endfor
  echo "=========================================================="
  let l:choice = input(printf("Выберите номер темы [1-%d] (Enter для отмены): ", len(g:onvim_themes)))
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

function! OnVimThemeComplete(ArgLead, CmdLine, CursorPos) abort
  let l:names = []
  for item in g:onvim_themes
    if item.name =~? '^' . a:ArgLead
      call add(l:names, item.name)
    endif
  endfor
  return l:names
endfunction

command! -nargs=0 Themes call OnVimSelectTheme()
command! -nargs=1 -complete=customlist,OnVimThemeComplete Theme call OnVimApplyTheme(<f-args>)
nnoremap <silent> <leader>th :Themes<CR>

" Статус-лайн в стиле LazyVim
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 0 " Используем buftabline для вкладок
let g:airline_skip_empty_sections = 1

" Автосинхронизация темы Airline при старте OnVim
augroup OnVimAirlineSync
  autocmd!
  autocmd VimEnter * silent! execute 'AirlineTheme ' . g:airline_theme | silent! AirlineRefresh
augroup END

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

" Не мигать ошибками прямо во время набора в режиме вставки (как в VS Code)
let g:lsp_diagnostics_signs_insert_mode_enabled = 0
let g:lsp_diagnostics_highlights_insert_mode_enabled = 0

" Красивые иконки диагностики в левой колонке (Nerd Font)
let g:lsp_diagnostics_signs_error = {'text': '●'}
let g:lsp_diagnostics_signs_warning = {'text': '▲'}
let g:lsp_diagnostics_signs_information = {'text': 'ℹ'}
let g:lsp_diagnostics_signs_hint = {'text': '💡'}

" Аккуратная подсветка ошибок подчёркиванием без ядовитой заливки фона
augroup OnVimLspHighlights
  au!
  autocmd ColorScheme,VimEnter * call s:tune_lsp_highlights()
augroup END

function! s:tune_lsp_highlights() abort
  hi! LspErrorHighlight   gui=undercurl guisp=#f38ba8 guibg=NONE cterm=underline ctermbg=NONE
  hi! LspWarningHighlight gui=undercurl guisp=#f9e2af guibg=NONE cterm=underline ctermbg=NONE
  hi! LspInfoHighlight    gui=undercurl guisp=#89dceb guibg=NONE cterm=underline ctermbg=NONE
  hi! LspHintHighlight    gui=undercurl guisp=#a6e3a1 guibg=NONE cterm=underline ctermbg=NONE

  hi! LspErrorText   guifg=#f38ba8 guibg=NONE gui=bold ctermfg=203 ctermbg=NONE
  hi! LspWarningText guifg=#f9e2af guibg=NONE gui=bold ctermfg=221 ctermbg=NONE
  hi! LspInfoText    guifg=#89dceb guibg=NONE ctermfg=117 ctermbg=NONE
  hi! LspHintText    guifg=#a6e3a1 guibg=NONE ctermfg=120 ctermbg=NONE
endfunction
call s:tune_lsp_highlights()

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

" 3. Java (Eclipse JDTLS - полноценный языковой сервер для Java)
if executable('jdtls')
  function! s:get_java_root_uri(server_info) abort
    let l:path = lsp#utils#get_buffer_path()
    let l:root = lsp#utils#find_nearest_parent_file_directory(l:path, ['pom.xml', 'build.gradle', 'build.gradle.kts', 'settings.gradle', '.git'])
    if empty(l:root)
      let l:root = fnamemodify(l:path, ':h')
    endif
    if empty(l:root)
      let l:root = getcwd()
    endif
    return lsp#utils#path_to_uri(l:root)
  endfunction

  au User lsp_setup call lsp#register_server({
    \ 'name': 'jdtls',
    \ 'cmd': {server_info->['jdtls']},
    \ 'root_uri': function('s:get_java_root_uri'),
    \ 'allowlist': ['java'],
    \ })
endif

" Максимальная детализация подсветки Java 
let g:java_highlight_all = 1
let g:java_highlight_functions = 1
let g:java_highlight_signature = 1
let g:java_highlight_generics = 1
let g:java_highlight_java_lang_ids = 1
let g:java_highlight_debug = 1

function! s:tune_java_highlights() abort
  hi! def link javaFunction       Function
  hi! def link javaType           Type
  hi! def link javaConstant       Constant
  hi! def link javaOperator       Operator
  hi! def link javaPreProc        PreProc
  hi! def link javaAccessKeyword  Keyword
  hi! def link javaModifierKeyword StorageClass
  hi! def link javaClassKeyword   Structure
  if &background ==# 'dark'
    hi! javaFunction   guifg=#89b4fa gui=bold ctermfg=111
    hi! javaType       guifg=#f9e2af gui=bold ctermfg=223
    hi! javaPreProc    guifg=#fab387 ctermfg=216
    hi! javaConstant   guifg=#fab387 gui=bold ctermfg=216
    hi! javaOperator   guifg=#89dceb ctermfg=116
    hi! javaComment    guifg=#6c7086 gui=italic ctermfg=243
    hi! javaString     guifg=#a6e3a1 ctermfg=149
  endif
endfunction

" Специфичные настройки для Java-разработки (Maven, Gradle, OpenJDK)
augroup OnVimJava
  au!
  autocmd FileType java call s:tune_java_highlights()
  autocmd ColorScheme * call s:tune_java_highlights()
  autocmd FileType java setlocal expandtab tabstop=4 shiftwidth=4 softtabstop=4
  autocmd FileType java setlocal autoindent smartindent
  autocmd FileType java setlocal cinoptions+=j1,(0,ws,Ws
  autocmd FileType java setlocal commentstring=//\ %s
  autocmd FileType java nnoremap <buffer> <leader>r :!javac % && java %:r<CR>
augroup END

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

" Принудительный вызов меню автодополнения по Ctrl+Space
inoremap <silent> <expr> <C-Space> asyncomplete#force_refresh()
inoremap <silent> <expr> <C-@> asyncomplete#force_refresh()

" Источники дополнения: буфер (слова и переменные) и пути к файлам
au User asyncomplete_setup call asyncomplete#register_source(asyncomplete#sources#buffer#get_source_options({
    \ 'name': 'buffer',
    \ 'allowlist': ['*'],
    \ 'completor': function('asyncomplete#sources#buffer#completor'),
    \ 'config': {
    \    'max_buffer_size': 5000000,
    \  },
    \ }))

au User asyncomplete_setup call asyncomplete#register_source(asyncomplete#sources#file#get_source_options({
    \ 'name': 'file',
    \ 'allowlist': ['*'],
    \ 'priority': 10,
    \ 'completor': function('asyncomplete#sources#file#completor')
    \ }))

" ==============================================================================
"                           Горячие клавиши
" ==============================================================================

" Блокируем Ctrl+S, чтобы он случайно не активировал команду 's' (substitute / режим вставки)
nnoremap <C-s> <Nop>
inoremap <C-s> <Nop>
vnoremap <C-s> <Nop>

" Сброс подсветки поиска клавишей Escape
nnoremap <silent> <Esc> :nohlsearch<CR><Esc>

" Навигация между окнами и панелью файлов (NERDTree слева <-> код справа)
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <C-w><C-w> <C-w>w

" Создание и закрытие сплитов: Пробел + v, Пробел + s, Пробел + x
nnoremap <leader>v :vsplit<CR>
nnoremap <leader>s :split<CR>
nnoremap <leader>x <C-w>c

" ==============================================================================
"               Переключение верхних вкладок (Buftabline)
" ==============================================================================
" 1. По кругу: Tab (вперёд) и Shift+Tab (назад)
noremap <silent> <Tab> :bnext<CR>
nnoremap <silent> <S-Tab> :bprev<CR>
nnoremap <silent> ]b :bnext<CR>
nnoremap <silent> [b :bprev<CR>
nnoremap <silent> <M-Right> :bnext<CR>
nnoremap <silent> <M-Left> :bprev<CR>

" 2. Мгновенно по номеру вкладки: Пробел + 1..9 или Alt + 1..9
nnoremap <silent> <leader>1 :1b<CR>
nnoremap <silent> <leader>2 :2b<CR>
nnoremap <silent> <leader>3 :3b<CR>
nnoremap <silent> <leader>4 :4b<CR>
nnoremap <silent> <leader>5 :5b<CR>
nnoremap <silent> <leader>6 :6b<CR>
nnoremap <silent> <leader>7 :7b<CR>
nnoremap <silent> <leader>8 :8b<CR>
nnoremap <silent> <leader>9 :9b<CR>

nnoremap <silent> <M-1> :1b<CR>
nnoremap <silent> <M-2> :2b<CR>
nnoremap <silent> <M-3> :3b<CR>
nnoremap <silent> <M-4> :4b<CR>
nnoremap <silent> <M-5> :5b<CR>
nnoremap <silent> <M-6> :6b<CR>
nnoremap <silent> <M-7> :7b<CR>
nnoremap <silent> <M-8> :8b<CR>
nnoremap <silent> <M-9> :9b<CR>

" 3. Закрыть текущую вкладку: Пробел + c или Пробел + bd
nnoremap <silent> <leader>c :bdelete<CR>
nnoremap <silent> <leader>bd :bdelete<CR>

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
