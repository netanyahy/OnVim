" Name: Everforest for OnVim
" Description: Comfortable natural green dark theme
set background=dark
hi clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "everforest"

hi Normal       guifg=#d3c6aa guibg=#2d353b gui=NONE ctermfg=187 ctermbg=236
hi Comment      guifg=#859289 guibg=NONE    gui=italic ctermfg=245 cterm=italic
hi Constant     guifg=#d699b6 guibg=NONE    gui=NONE ctermfg=175
hi String       guifg=#a7c080 guibg=NONE    gui=NONE ctermfg=142
hi Character    guifg=#a7c080 guibg=NONE    gui=NONE ctermfg=142
hi Number       guifg=#d699b6 guibg=NONE    gui=NONE ctermfg=175
hi Boolean      guifg=#d699b6 guibg=NONE    gui=NONE ctermfg=175
hi Float        guifg=#d699b6 guibg=NONE    gui=NONE ctermfg=175
hi Identifier   guifg=#7fbbb3 guibg=NONE    gui=NONE ctermfg=109
hi Function     guifg=#a7c080 guibg=NONE    gui=NONE ctermfg=142
hi Statement    guifg=#e67e80 guibg=NONE    gui=NONE ctermfg=167
hi Conditional  guifg=#e67e80 guibg=NONE    gui=NONE ctermfg=167
hi Repeat       guifg=#e67e80 guibg=NONE    gui=NONE ctermfg=167
hi Label        guifg=#e67e80 guibg=NONE    gui=NONE ctermfg=167
hi Operator     guifg=#e69875 guibg=NONE    gui=NONE ctermfg=208
hi Keyword      guifg=#e67e80 guibg=NONE    gui=NONE ctermfg=167
hi Exception    guifg=#e67e80 guibg=NONE    gui=NONE ctermfg=167
hi PreProc      guifg=#dbbc7f guibg=NONE    gui=NONE ctermfg=179
hi Include      guifg=#e67e80 guibg=NONE    gui=NONE ctermfg=167
hi Define       guifg=#e67e80 guibg=NONE    gui=NONE ctermfg=167
hi Macro        guifg=#e67e80 guibg=NONE    gui=NONE ctermfg=167
hi PreCondit    guifg=#dbbc7f guibg=NONE    gui=NONE ctermfg=179
hi Type         guifg=#dbbc7f guibg=NONE    gui=NONE ctermfg=179
hi StorageClass guifg=#e67e80 guibg=NONE    gui=NONE ctermfg=167
hi Structure    guifg=#dbbc7f guibg=NONE    gui=NONE ctermfg=179
hi Typedef      guifg=#dbbc7f guibg=NONE    gui=NONE ctermfg=179
hi Special      guifg=#e69875 guibg=NONE    gui=NONE ctermfg=208
hi SpecialChar  guifg=#e67e80 guibg=NONE    gui=NONE ctermfg=167
hi Tag          guifg=#7fbbb3 guibg=NONE    gui=NONE ctermfg=109
hi Delimiter    guifg=#d3c6aa guibg=NONE    gui=NONE ctermfg=187
hi Underlined   guifg=#7fbbb3 guibg=NONE    gui=underline ctermfg=109 cterm=underline
hi Ignore       guifg=NONE    guibg=NONE    gui=NONE
hi Error        guifg=#e67e80 guibg=#2d353b gui=bold,underline ctermfg=167
hi Todo         guifg=#dbbc7f guibg=NONE    gui=bold ctermfg=179 cterm=bold

hi Cursor       guifg=#2d353b guibg=#d3c6aa gui=NONE ctermfg=236 ctermbg=187
hi CursorLine   guifg=NONE    guibg=#343f44 gui=NONE ctermbg=237
hi CursorColumn guifg=NONE    guibg=#343f44 gui=NONE ctermbg=237
hi ColorColumn  guifg=NONE    guibg=#343f44 gui=NONE ctermbg=237
hi LineNr       guifg=#7a8478 guibg=NONE    gui=NONE ctermfg=244
hi CursorLineNr guifg=#d3c6aa guibg=#343f44 gui=bold ctermfg=187 ctermbg=237
hi StatusLine   guifg=#d3c6aa guibg=#343f44 gui=NONE ctermfg=187 ctermbg=237
hi StatusLineNC guifg=#859289 guibg=#2d353b gui=NONE ctermfg=245 ctermbg=236
hi VertSplit    guifg=#232a2e guibg=#232a2e gui=NONE ctermfg=235 ctermbg=235
hi Visual       guifg=NONE    guibg=#425047 gui=NONE ctermbg=239
hi Search       guifg=#2d353b guibg=#dbbc7f gui=NONE ctermfg=236 ctermbg=179
hi IncSearch    guifg=#2d353b guibg=#a7c080 gui=NONE ctermfg=236 ctermbg=142
hi Pmenu        guifg=#d3c6aa guibg=#282e33 gui=NONE ctermfg=187 ctermbg=235
hi PmenuSel     guifg=#ffffff guibg=#425047 gui=bold ctermfg=255 ctermbg=239
hi PmenuSbar    guifg=NONE    guibg=#343f44 gui=NONE ctermbg=237
hi PmenuThumb   guifg=NONE    guibg=#7a8478 gui=NONE ctermbg=244
hi TabLine      guifg=#859289 guibg=#282e33 gui=NONE ctermfg=245 ctermbg=235
hi TabLineSel   guifg=#d3c6aa guibg=#343f44 gui=bold ctermfg=187 ctermbg=237
hi TabLineFill  guifg=NONE    guibg=#232a2e gui=NONE ctermbg=235
hi Folded       guifg=#859289 guibg=#343f44 gui=NONE ctermfg=245 ctermbg=237
hi FoldColumn   guifg=#7a8478 guibg=NONE    gui=NONE ctermfg=244
hi SignColumn   guifg=NONE    guibg=NONE    gui=NONE
hi MatchParen   guifg=#a7c080 guibg=NONE    gui=underline,bold ctermfg=142
hi DiffAdd      guifg=NONE    guibg=#324335 gui=NONE ctermbg=22
hi DiffChange   guifg=NONE    guibg=#33414a gui=NONE ctermbg=17
hi DiffDelete   guifg=NONE    guibg=#473335 gui=NONE ctermbg=52
hi DiffText     guifg=NONE    guibg=#3c515a gui=bold ctermbg=24
