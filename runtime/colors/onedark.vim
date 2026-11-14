" Name: One Dark Pro for OnVim
" Description: Clean One Dark theme based on Atom / VS Code
set background=dark
hi clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "onedark"

hi Normal       guifg=#abb2bf guibg=#282c34 gui=NONE ctermfg=145 ctermbg=235
hi Comment      guifg=#5c6370 guibg=NONE    gui=italic ctermfg=240 cterm=italic
hi Constant     guifg=#e5c07b guibg=NONE    gui=NONE ctermfg=180
hi String       guifg=#98c379 guibg=NONE    gui=NONE ctermfg=114
hi Character    guifg=#98c379 guibg=NONE    gui=NONE ctermfg=114
hi Number       guifg=#d19a66 guibg=NONE    gui=NONE ctermfg=173
hi Boolean      guifg=#d19a66 guibg=NONE    gui=NONE ctermfg=173
hi Float        guifg=#d19a66 guibg=NONE    gui=NONE ctermfg=173
hi Identifier   guifg=#e06c75 guibg=NONE    gui=NONE ctermfg=204
hi Function     guifg=#61afef guibg=NONE    gui=NONE ctermfg=39
hi Statement    guifg=#c678dd guibg=NONE    gui=NONE ctermfg=170
hi Conditional  guifg=#c678dd guibg=NONE    gui=NONE ctermfg=170
hi Repeat       guifg=#c678dd guibg=NONE    gui=NONE ctermfg=170
hi Label        guifg=#c678dd guibg=NONE    gui=NONE ctermfg=170
hi Operator     guifg=#56b6c2 guibg=NONE    gui=NONE ctermfg=73
hi Keyword      guifg=#c678dd guibg=NONE    gui=NONE ctermfg=170
hi Exception    guifg=#c678dd guibg=NONE    gui=NONE ctermfg=170
hi PreProc      guifg=#e5c07b guibg=NONE    gui=NONE ctermfg=180
hi Include      guifg=#c678dd guibg=NONE    gui=NONE ctermfg=170
hi Define       guifg=#c678dd guibg=NONE    gui=NONE ctermfg=170
hi Macro        guifg=#c678dd guibg=NONE    gui=NONE ctermfg=170
hi PreCondit    guifg=#e5c07b guibg=NONE    gui=NONE ctermfg=180
hi Type         guifg=#e5c07b guibg=NONE    gui=NONE ctermfg=180
hi StorageClass guifg=#e5c07b guibg=NONE    gui=NONE ctermfg=180
hi Structure    guifg=#e5c07b guibg=NONE    gui=NONE ctermfg=180
hi Typedef      guifg=#e5c07b guibg=NONE    gui=NONE ctermfg=180
hi Special      guifg=#61afef guibg=NONE    gui=NONE ctermfg=39
hi SpecialChar  guifg=#d19a66 guibg=NONE    gui=NONE ctermfg=173
hi Tag          guifg=#e06c75 guibg=NONE    gui=NONE ctermfg=204
hi Delimiter    guifg=#abb2bf guibg=NONE    gui=NONE ctermfg=145
hi Underlined   guifg=#61afef guibg=NONE    gui=underline ctermfg=39 cterm=underline
hi Ignore       guifg=NONE    guibg=NONE    gui=NONE
hi Error        guifg=#e06c75 guibg=#282c34 gui=bold,underline ctermfg=204
hi Todo         guifg=#e5c07b guibg=NONE    gui=bold ctermfg=180 cterm=bold

hi Cursor       guifg=#282c34 guibg=#528bff gui=NONE ctermfg=235 ctermbg=75
hi CursorLine   guifg=NONE    guibg=#2c323c gui=NONE ctermbg=236
hi CursorColumn guifg=NONE    guibg=#2c323c gui=NONE ctermbg=236
hi ColorColumn  guifg=NONE    guibg=#2c323c gui=NONE ctermbg=236
hi LineNr       guifg=#4b5263 guibg=NONE    gui=NONE ctermfg=240
hi CursorLineNr guifg=#abb2bf guibg=#2c323c gui=bold ctermfg=145 ctermbg=236
hi StatusLine   guifg=#abb2bf guibg=#2c323c gui=NONE ctermfg=145 ctermbg=236
hi StatusLineNC guifg=#5c6370 guibg=#282c34 gui=NONE ctermfg=240 ctermbg=235
hi VertSplit    guifg=#181a1f guibg=#181a1f gui=NONE ctermfg=234 ctermbg=234
hi Visual       guifg=NONE    guibg=#3e4452 gui=NONE ctermbg=238
hi Search       guifg=#282c34 guibg=#e5c07b gui=NONE ctermfg=235 ctermbg=180
hi IncSearch    guifg=#282c34 guibg=#98c379 gui=NONE ctermfg=235 ctermbg=114
hi Pmenu        guifg=#abb2bf guibg=#21252b gui=NONE ctermfg=145 ctermbg=235
hi PmenuSel     guifg=#ffffff guibg=#383e4a gui=bold ctermfg=255 ctermbg=238
hi PmenuSbar    guifg=NONE    guibg=#2c323c gui=NONE ctermbg=236
hi PmenuThumb   guifg=NONE    guibg=#4b5263 gui=NONE ctermbg=240
hi TabLine      guifg=#5c6370 guibg=#21252b gui=NONE ctermfg=240 ctermbg=235
hi TabLineSel   guifg=#abb2bf guibg=#282c34 gui=bold ctermfg=145 ctermbg=235
hi TabLineFill  guifg=NONE    guibg=#1e2227 gui=NONE ctermbg=234
hi Folded       guifg=#5c6370 guibg=#2c323c gui=NONE ctermfg=240 ctermbg=236
hi FoldColumn   guifg=#4b5263 guibg=NONE    gui=NONE ctermfg=240
hi SignColumn   guifg=NONE    guibg=NONE    gui=NONE
hi MatchParen   guifg=#61afef guibg=NONE    gui=underline,bold ctermfg=39
hi DiffAdd      guifg=NONE    guibg=#2d3f34 gui=NONE ctermbg=22
hi DiffChange   guifg=NONE    guibg=#2a3648 gui=NONE ctermbg=17
hi DiffDelete   guifg=NONE    guibg=#472d30 gui=NONE ctermbg=52
hi DiffText     guifg=NONE    guibg=#394b63 gui=bold ctermbg=24
