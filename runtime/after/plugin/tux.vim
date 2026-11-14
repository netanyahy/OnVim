function! WebDevIconsGetFileFormatSymbol(...) abort
  if &fileformat ==? 'dos'
    return ''
  elseif &fileformat ==? 'mac'
    return ''
  else
    return ''
  endif
endfunction
