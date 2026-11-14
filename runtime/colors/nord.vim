" Name: Nord for OnVim
" Description: An arctic, north-bluish clean color theme
set background=dark
hi clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "nord"

hi Normal       guifg=#d8dee9 guibg=#2e3440 gui=NONE ctermfg=253 ctermbg=237
hi Comment      guifg=#616e88 guibg=NONE    gui=italic ctermfg=242 cterm=italic
hi Constant     guifg=#ebcb8b guibg=NONE    gui=NONE ctermfg=222
hi String       guifg=#a3be8c guibg=NONE    gui=NONE ctermfg=108
hi Character    guifg=#a3be8c guibg=NONE    gui=NONE ctermfg=108
hi Number       guifg=#b48ead guibg=NONE    gui=NONE ctermfg=139
hi Boolean      guifg=#81a1c1 guibg=NONE    gui=NONE ctermfg=109
hi Float        guifg=#b48ead guibg=NONE    gui=NONE ctermfg=139
hi Identifier   guifg=#88c0d0 guibg=NONE    gui=NONE ctermfg=110
hi Function     guifg=#88c0d0 guibg=NONE    gui=NONE ctermfg=110
hi Statement    guifg=#81a1c1 guibg=NONE    gui=NONE ctermfg=109
hi Conditional  guifg=#81a1c1 guibg=NONE    gui=NONE ctermfg=109
hi Repeat       guifg=#81a1c1 guibg=NONE    gui=NONE ctermfg=109
hi Label        guifg=#81a1c1 guibg=NONE    gui=NONE ctermfg=109
hi Operator     guifg=#81a1c1 guibg=NONE    gui=NONE ctermfg=109
hi Keyword      guifg=#81a1c1 guibg=NONE    gui=NONE ctermfg=109
hi Exception    guifg=#81a1c1 guibg=NONE    gui=NONE ctermfg=109
hi PreProc      guifg=#5e81ac guibg=NONE    gui=NONE ctermfg=67
hi Include      guifg=#81a1c1 guibg=NONE    gui=NONE ctermfg=109
hi Define       guifg=#81a1c1 guibg=NONE    gui=NONE ctermfg=109
hi Macro        guifg=#81a1c1 guibg=NONE    gui=NONE ctermfg=109
hi PreCondit    guifg=#5e81ac guibg=NONE    gui=NONE ctermfg=67
hi Type         guifg=#8fbcbb guibg=NONE    gui=NONE ctermfg=109
hi StorageClass guifg=#81a1c1 guibg=NONE    gui=NONE ctermfg=109
hi Structure    guifg=#8fbcbb guibg=NONE    gui=NONE ctermfg=109
hi Typedef      guifg=#8fbcbb guibg=NONE    gui=NONE ctermfg=109
hi Special      guifg=#81a1c1 guibg=NONE    gui=NONE ctermfg=109
hi SpecialChar  guifg=#ebcb8b guibg=NONE    gui=NONE ctermfg=222
hi Tag          guifg=#8fbcbb guibg=NONE    gui=NONE ctermfg=109
hi Delimiter    guifg=#eceff4 guibg=NONE    gui=NONE ctermfg=255
hi Underlined   guifg=#88c0d0 guibg=NONE    gui=underline ctermfg=110 cterm=underline
hi Ignore       guifg=NONE    guibg=NONE    gui=NONE
hi Error        guifg=#bf616a guibg=#2e3440 gui=bold,underline ctermfg=167
hi Todo         guifg=#ebcb8b guibg=NONE    gui=bold ctermfg=222 cterm=bold

hi Cursor       guifg=#2e3440 guibg=#d8dee9 gui=NONE ctermfg=237 ctermbg=253
hi CursorLine   guifg=NONE    guibg=#3b4252 gui=NONE ctermbg=238
hi CursorColumn guifg=NONE    guibg=#3b4252 gui=NONE ctermbg=238
hi ColorColumn  guifg=NONE    guibg=#3b4252 gui=NONE ctermbg=238
hi LineNr       guifg=#4c566a guibg=NONE    gui=NONE ctermfg=240
hi CursorLineNr guifg=#d8dee9 guibg=#3b4252 gui=bold ctermfg=253 ctermbg=238
hi StatusLine   guifg=#d8dee9 guibg=#3b4252 gui=NONE ctermfg=253 ctermbg=238
hi StatusLineNC guifg=#616e88 guibg=#2e3440 gui=NONE ctermfg=242 ctermbg=237
hi VertSplit    guifg=#232831 guibg=#232831 gui=NONE ctermfg=235 ctermbg=235
hi Visual       guifg=NONE    guibg=#434c5e gui=NONE ctermbg=239
hi Search       guifg=#2e3440 guibg=#ebcb8b gui=NONE ctermfg=237 ctermbg=222
hi IncSearch    guifg=#2e3440 guibg=#88c0d0 gui=NONE ctermfg=237 ctermbg=110
hi Pmenu        guifg=#d8dee9 guibg=#292e39 gui=NONE ctermfg=253 ctermbg=236
hi PmenuSel     guifg=#eceff4 guibg=#434c5e gui=bold ctermfg=255 ctermbg=239
hi PmenuSbar    guifg=NONE    guibg=#3b4252 gui=NONE ctermbg=238
hi PmenuThumb   guifg=NONE    guibg=#616e88 gui=NONE ctermbg=242
hi TabLine      guifg=#616e88 guibg=#292e39 gui=NONE ctermfg=242 ctermbg=236
hi TabLineSel   guifg=#eceff4 guibg=#3b4252 gui=bold ctermfg=255 ctermbg=238
hi TabLineFill  guifg=NONE    guibg=#232831 gui=NONE ctermbg=235
hi Folded       guifg=#616e88 guibg=#3b4252 gui=NONE ctermfg=242 ctermbg=238
hi FoldColumn   guifg=#4c566a guibg=NONE    gui=NONE ctermfg=240
hi SignColumn   guifg=NONE    guibg=NONE    gui=NONE
hi MatchParen   guifg=#88c0d0 guibg=NONE    gui=underline,bold ctermfg=110
hi DiffAdd      guifg=NONE    guibg=#33453b gui=NONE ctermbg=22
hi DiffChange   guifg=NONE    guibg=#354151 gui=NONE ctermbg=17
hi DiffDelete   guifg=NONE    guibg=#4b3135 gui=NONE ctermbg=52
hi DiffText     guifg=NONE    guibg=#3e5368 gui=bold ctermbg=24
