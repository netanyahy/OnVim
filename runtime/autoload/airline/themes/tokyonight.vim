" Tokyo Night Airline Theme for OnVim
function! airline#themes#tokyonight#refresh()
  let g:airline#themes#tokyonight#palette = {}

  let g:airline#themes#tokyonight#palette.accents = {
        \ 'red': [ '#f7768e', '', 203, 0 ]
        \ }

  let s:N1 = [ '#1a1b26', '#7aa2f7', 234, 111, 'bold' ]
  let s:N2 = [ '#c0caf5', '#292e42', 189, 236 ]
  let s:N3 = [ '#7aa2f7', '#1f2335', 111, 235 ]
  let g:airline#themes#tokyonight#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)
  let g:airline#themes#tokyonight#palette.normal_modified = {
        \ 'airline_c': [ '#e0af68', '#1f2335', 179, 235, '' ]
        \ }

  let s:I1 = [ '#1a1b26', '#9ece6a', 234, 120, 'bold' ]
  let s:I2 = s:N2
  let s:I3 = [ '#9ece6a', '#1f2335', 120, 235 ]
  let g:airline#themes#tokyonight#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3)
  let g:airline#themes#tokyonight#palette.insert_modified = g:airline#themes#tokyonight#palette.normal_modified

  let s:R1 = [ '#1a1b26', '#f7768e', 234, 203, 'bold' ]
  let s:R2 = s:N2
  let s:R3 = [ '#f7768e', '#1f2335', 203, 235 ]
  let g:airline#themes#tokyonight#palette.replace = airline#themes#generate_color_map(s:R1, s:R2, s:R3)
  let g:airline#themes#tokyonight#palette.replace_modified = g:airline#themes#tokyonight#palette.normal_modified

  let s:V1 = [ '#1a1b26', '#bb9af7', 234, 177, 'bold' ]
  let s:V2 = s:N2
  let s:V3 = [ '#bb9af7', '#1f2335', 177, 235 ]
  let g:airline#themes#tokyonight#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3)
  let g:airline#themes#tokyonight#palette.visual_modified = g:airline#themes#tokyonight#palette.normal_modified

  let s:IA1 = [ '#565f89', '#1f2335', 240, 235 ]
  let s:IA2 = [ '#565f89', '#1a1b26', 240, 234 ]
  let s:IA3 = [ '#565f89', '#1a1b26', 240, 234 ]
  let g:airline#themes#tokyonight#palette.inactive = airline#themes#generate_color_map(s:IA1, s:IA2, s:IA3)
  let g:airline#themes#tokyonight#palette.inactive_modified = g:airline#themes#tokyonight#palette.normal_modified
endfunction

call airline#themes#tokyonight#refresh()
