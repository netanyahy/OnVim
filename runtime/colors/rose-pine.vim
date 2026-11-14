" Name: Rosé Pine for OnVim
" Description: Soho vibes with nostalgic pastel colors
set background=dark
hi clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "rose-pine"

hi Normal       guifg=#e0def4 guibg=#191724 gui=NONE ctermfg=189 ctermbg=234
hi Comment      guifg=#6e6a86 guibg=NONE    gui=italic ctermfg=242 cterm=italic
hi Constant     guifg=#ebbcba guibg=NONE    gui=NONE ctermfg=217
hi String       guifg=#f6c177 guibg=NONE    gui=NONE ctermfg=221
hi Character    guifg=#f6c177 guibg=NONE    gui=NONE ctermfg=221
hi Number       guifg=#ebbcba guibg=NONE    gui=NONE ctermfg=217
hi Boolean      guifg=#ebbcba guibg=NONE    gui=NONE ctermfg=217
hi Float        guifg=#ebbcba guibg=NONE    gui=NONE ctermfg=217
hi Identifier   guifg=#9ccfd8 guibg=NONE    gui=NONE ctermfg=116
hi Function     guifg=#ebbcba guibg=NONE    gui=NONE ctermfg=217
hi Statement    guifg=#31748f guibg=NONE    gui=NONE ctermfg=67
hi Conditional  guifg=#31748f guibg=NONE    gui=NONE ctermfg=67
hi Repeat       guifg=#31748f guibg=NONE    gui=NONE ctermfg=67
hi Label        guifg=#31748f guibg=NONE    gui=NONE ctermfg=67
hi Operator     guifg=#9ccfd8 guibg=NONE    gui=NONE ctermfg=116
hi Keyword      guifg=#31748f guibg=NONE    gui=NONE ctermfg=67
hi Exception    guifg=#eb6f92 guibg=NONE    gui=NONE ctermfg=204
hi PreProc      guifg=#c4a7e7 guibg=NONE    gui=NONE ctermfg=183
hi Include      guifg=#31748f guibg=NONE    gui=NONE ctermfg=67
hi Define       guifg=#31748f guibg=NONE    gui=NONE ctermfg=67
hi Macro        guifg=#31748f guibg=NONE    gui=NONE ctermfg=67
hi PreCondit    guifg=#c4a7e7 guibg=NONE    gui=NONE ctermfg=183
hi Type         guifg=#9ccfd8 guibg=NONE    gui=NONE ctermfg=116
hi StorageClass guifg=#31748f guibg=NONE    gui=NONE ctermfg=67
hi Structure    guifg=#9ccfd8 guibg=NONE    gui=NONE ctermfg=116
hi Typedef      guifg=#9ccfd8 guibg=NONE    gui=NONE ctermfg=116
hi Special      guifg=#c4a7e7 guibg=NONE    gui=NONE ctermfg=183
hi SpecialChar  guifg=#eb6f92 guibg=NONE    gui=NONE ctermfg=204
hi Tag          guifg=#ebbcba guibg=NONE    gui=NONE ctermfg=217
hi Delimiter    guifg=#908caa guibg=NONE    gui=NONE ctermfg=246
hi Underlined   guifg=#c4a7e7 guibg=NONE    gui=underline ctermfg=183 cterm=underline
hi Ignore       guifg=NONE    guibg=NONE    gui=NONE
hi Error        guifg=#eb6f92 guibg=#191724 gui=bold,underline ctermfg=204
hi Todo         guifg=#f6c177 guibg=NONE    gui=bold ctermfg=221 cterm=bold

hi Cursor       guifg=#191724 guibg=#e0def4 gui=NONE ctermfg=234 ctermbg=189
hi CursorLine   guifg=NONE    guibg=#211f2d gui=NONE ctermbg=235
hi CursorColumn guifg=NONE    guibg=#211f2d gui=NONE ctermbg=235
hi ColorColumn  guifg=NONE    guibg=#211f2d gui=NONE ctermbg=235
hi LineNr       guifg=#6e6a86 guibg=NONE    gui=NONE ctermfg=242
hi CursorLineNr guifg=#e0def4 guibg=#211f2d gui=bold ctermfg=189 ctermbg=235
hi StatusLine   guifg=#e0def4 guibg=#211f2d gui=NONE ctermfg=189 ctermbg=235
hi StatusLineNC guifg=#6e6a86 guibg=#191724 gui=NONE ctermfg=242 ctermbg=234
hi VertSplit    guifg=#14121c guibg=#14121c gui=NONE ctermfg=233 ctermbg=233
hi Visual       guifg=NONE    guibg=#2a283e gui=NONE ctermbg=237
hi Search       guifg=#191724 guibg=#f6c177 gui=NONE ctermfg=234 ctermbg=221
hi IncSearch    guifg=#191724 guibg=#ebbcba gui=NONE ctermfg=234 ctermbg=217
hi Pmenu        guifg=#e0def4 guibg=#1f1d2e gui=NONE ctermfg=189 ctermbg=234
hi PmenuSel     guifg=#ffffff guibg=#2a283e gui=bold ctermfg=255 ctermbg=237
hi PmenuSbar    guifg=NONE    guibg=#211f2d gui=NONE ctermbg=235
hi PmenuThumb   guifg=NONE    guibg=#6e6a86 gui=NONE ctermbg=242
hi TabLine      guifg=#6e6a86 guibg=#1f1d2e gui=NONE ctermfg=242 ctermbg=234
hi TabLineSel   guifg=#e0def4 guibg=#211f2d gui=bold ctermfg=189 ctermbg=235
hi TabLineFill  guifg=NONE    guibg=#14121c gui=NONE ctermbg=233
hi Folded       guifg=#6e6a86 guibg=#211f2d gui=NONE ctermfg=242 ctermbg=235
hi FoldColumn   guifg=#6e6a86 guibg=NONE    gui=NONE ctermfg=242
hi SignColumn   guifg=NONE    guibg=NONE    gui=NONE
hi MatchParen   guifg=#eb6f92 guibg=NONE    gui=underline,bold ctermfg=204
hi DiffAdd      guifg=NONE    guibg=#243530 gui=NONE ctermbg=22
hi DiffChange   guifg=NONE    guibg=#242a3a gui=NONE ctermbg=17
hi DiffDelete   guifg=NONE    guibg=#3b232a gui=NONE ctermbg=52
hi DiffText     guifg=NONE    guibg=#333a4f gui=bold ctermbg=24
