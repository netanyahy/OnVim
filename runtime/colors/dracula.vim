" Name: Dracula for OnVim
" Description: Famous dark theme with high contrast vibrant colors
set background=dark
hi clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "dracula"

hi Normal       guifg=#f8f8f2 guibg=#282a36 gui=NONE ctermfg=255 ctermbg=236
hi Comment      guifg=#6272a4 guibg=NONE    gui=italic ctermfg=61 cterm=italic
hi Constant     guifg=#bd93f9 guibg=NONE    gui=NONE ctermfg=141
hi String       guifg=#f1fa8c guibg=NONE    gui=NONE ctermfg=228
hi Character    guifg=#f1fa8c guibg=NONE    gui=NONE ctermfg=228
hi Number       guifg=#bd93f9 guibg=NONE    gui=NONE ctermfg=141
hi Boolean      guifg=#bd93f9 guibg=NONE    gui=NONE ctermfg=141
hi Float        guifg=#bd93f9 guibg=NONE    gui=NONE ctermfg=141
hi Identifier   guifg=#50fa7b guibg=NONE    gui=NONE ctermfg=84
hi Function     guifg=#50fa7b guibg=NONE    gui=NONE ctermfg=84
hi Statement    guifg=#ff79c6 guibg=NONE    gui=NONE ctermfg=212
hi Conditional  guifg=#ff79c6 guibg=NONE    gui=NONE ctermfg=212
hi Repeat       guifg=#ff79c6 guibg=NONE    gui=NONE ctermfg=212
hi Label        guifg=#ff79c6 guibg=NONE    gui=NONE ctermfg=212
hi Operator     guifg=#ff79c6 guibg=NONE    gui=NONE ctermfg=212
hi Keyword      guifg=#ff79c6 guibg=NONE    gui=NONE ctermfg=212
hi Exception    guifg=#ff79c6 guibg=NONE    gui=NONE ctermfg=212
hi PreProc      guifg=#ff79c6 guibg=NONE    gui=NONE ctermfg=212
hi Include      guifg=#ff79c6 guibg=NONE    gui=NONE ctermfg=212
hi Define       guifg=#ff79c6 guibg=NONE    gui=NONE ctermfg=212
hi Macro        guifg=#ff79c6 guibg=NONE    gui=NONE ctermfg=212
hi PreCondit    guifg=#ff79c6 guibg=NONE    gui=NONE ctermfg=212
hi Type         guifg=#8be9fd guibg=NONE    gui=NONE ctermfg=117
hi StorageClass guifg=#ff79c6 guibg=NONE    gui=NONE ctermfg=212
hi Structure    guifg=#8be9fd guibg=NONE    gui=NONE ctermfg=117
hi Typedef      guifg=#8be9fd guibg=NONE    gui=NONE ctermfg=117
hi Special      guifg=#ffb86c guibg=NONE    gui=NONE ctermfg=215
hi SpecialChar  guifg=#ff79c6 guibg=NONE    gui=NONE ctermfg=212
hi Tag          guifg=#8be9fd guibg=NONE    gui=NONE ctermfg=117
hi Delimiter    guifg=#f8f8f2 guibg=NONE    gui=NONE ctermfg=255
hi Underlined   guifg=#8be9fd guibg=NONE    gui=underline ctermfg=117 cterm=underline
hi Ignore       guifg=NONE    guibg=NONE    gui=NONE
hi Error        guifg=#ff5555 guibg=#282a36 gui=bold,underline ctermfg=203
hi Todo         guifg=#f1fa8c guibg=NONE    gui=bold ctermfg=228 cterm=bold

hi Cursor       guifg=#282a36 guibg=#f8f8f2 gui=NONE ctermfg=236 ctermbg=255
hi CursorLine   guifg=NONE    guibg=#343746 gui=NONE ctermbg=237
hi CursorColumn guifg=NONE    guibg=#343746 gui=NONE ctermbg=237
hi ColorColumn  guifg=NONE    guibg=#343746 gui=NONE ctermbg=237
hi LineNr       guifg=#6272a4 guibg=NONE    gui=NONE ctermfg=61
hi CursorLineNr guifg=#f8f8f2 guibg=#343746 gui=bold ctermfg=255 ctermbg=237
hi StatusLine   guifg=#f8f8f2 guibg=#343746 gui=NONE ctermfg=255 ctermbg=237
hi StatusLineNC guifg=#6272a4 guibg=#282a36 gui=NONE ctermfg=61 ctermbg=236
hi VertSplit    guifg=#191a21 guibg=#191a21 gui=NONE ctermfg=234 ctermbg=234
hi Visual       guifg=NONE    guibg=#44475a gui=NONE ctermbg=238
hi Search       guifg=#282a36 guibg=#f1fa8c gui=NONE ctermfg=236 ctermbg=228
hi IncSearch    guifg=#282a36 guibg=#50fa7b gui=NONE ctermfg=236 ctermbg=84
hi Pmenu        guifg=#f8f8f2 guibg=#21222c gui=NONE ctermfg=255 ctermbg=235
hi PmenuSel     guifg=#ffffff guibg=#44475a gui=bold ctermfg=255 ctermbg=238
hi PmenuSbar    guifg=NONE    guibg=#343746 gui=NONE ctermbg=237
hi PmenuThumb   guifg=NONE    guibg=#6272a4 gui=NONE ctermbg=61
hi TabLine      guifg=#6272a4 guibg=#21222c gui=NONE ctermfg=61 ctermbg=235
hi TabLineSel   guifg=#f8f8f2 guibg=#343746 gui=bold ctermfg=255 ctermbg=237
hi TabLineFill  guifg=NONE    guibg=#191a21 gui=NONE ctermbg=234
hi Folded       guifg=#6272a4 guibg=#343746 gui=NONE ctermfg=61 ctermbg=237
hi FoldColumn   guifg=#6272a4 guibg=NONE    gui=NONE ctermfg=61
hi SignColumn   guifg=NONE    guibg=NONE    gui=NONE
hi MatchParen   guifg=#50fa7b guibg=NONE    gui=underline,bold ctermfg=84
hi DiffAdd      guifg=NONE    guibg=#2a4030 gui=NONE ctermbg=22
hi DiffChange   guifg=NONE    guibg=#2b3b4f gui=NONE ctermbg=17
hi DiffDelete   guifg=NONE    guibg=#4f2b30 gui=NONE ctermbg=52
hi DiffText     guifg=NONE    guibg=#3b516b gui=bold ctermbg=24
