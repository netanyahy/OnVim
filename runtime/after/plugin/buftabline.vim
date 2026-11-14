" ==============================================================================
"      ⚡ OnVim Tabline Enhancement - Filetype / Language Icons ⚡
" ==============================================================================

function! OnVimGetFileIcon(bufnum, bufpath) abort
  let l:filename = fnamemodify(a:bufpath, ':t')
  if empty(l:filename)
    return ''
  endif

  " 1. Проверяем vim-devicons (ryanoasis/vim-devicons)
  if exists('*WebDevIconsGetFileTypeSymbol')
    let l:sym = WebDevIconsGetFileTypeSymbol(a:bufpath)
    if !empty(l:sym)
      return l:sym
    endif
  endif

  " 2. Резервный словарь иконок языков по расширению и filetype
  let l:ext = tolower(fnamemodify(a:bufpath, ':e'))
  let l:ft = getbufvar(a:bufnum, '&filetype')

  let l:icons = {
  \ 'lua': '',
  \ 'php': '',
  \ 'ts': '',
  \ 'typescript': '',
  \ 'tsx': '',
  \ 'typescriptreact': '',
  \ 'js': '',
  \ 'javascript': '',
  \ 'jsx': '',
  \ 'javascriptreact': '',
  \ 'py': '',
  \ 'python': '',
  \ 'java': '',
  \ 'c': '',
  \ 'h': '',
  \ 'cpp': '',
  \ 'hpp': '',
  \ 'cc': '',
  \ 'cxx': '',
  \ 'rs': '',
  \ 'rust': '',
  \ 'go': '',
  \ 'html': '',
  \ 'htm': '',
  \ 'css': '',
  \ 'scss': '',
  \ 'sass': '',
  \ 'less': '',
  \ 'json': '',
  \ 'yaml': '',
  \ 'yml': '',
  \ 'toml': '',
  \ 'ini': '',
  \ 'xml': '󰗀',
  \ 'md': '',
  \ 'markdown': '',
  \ 'sh': '',
  \ 'bash': '',
  \ 'zsh': '',
  \ 'fish': '󰈺',
  \ 'vim': '',
  \ 'sql': '',
  \ 'rb': '',
  \ 'ruby': '',
  \ 'dart': '',
  \ 'swift': '',
  \ 'kt': '',
  \ 'kotlin': '',
  \ 'dockerfile': '󰡨',
  \ 'vue': '󰡄',
  \ 'svelte': '',
  \ }

  if has_key(l:icons, l:ext)
    return l:icons[l:ext]
  elseif !empty(l:ft) && has_key(l:icons, l:ft)
    return l:icons[l:ft]
  endif
  return ''
endfunction

function! OnVimTablineSwitchBuffer(bufnum, clicks, button, mod) abort
  execute 'buffer' a:bufnum
endfunction

let s:onvim_dirsep = fnamemodify(getcwd(), ':p')[-1:]
let s:onvim_centerbuf = winbufnr(0)
let s:onvim_tablineat = has('tablineat')

function! buftabline#render() abort
	let show_num = g:buftabline_numbers == 1
	let show_ord = g:buftabline_numbers == 2
	let show_mod = g:buftabline_indicators
	let lpad     = g:buftabline_separators ? nr2char(0x23B8) : ' '

	let bufnums = buftabline#user_buffers()
	let centerbuf = s:onvim_centerbuf

	let tabs = []
	let path_tabs = []
	let tabs_per_tail = {}
	let currentbuf = winbufnr(0)
	let screen_num = 0
	for bufnum in bufnums
		let screen_num = show_num ? bufnum : show_ord ? screen_num + 1 : ''
		let tab = { 'num': bufnum, 'pre': '' }
		let tab.hilite = currentbuf == bufnum ? 'Current' : bufwinnr(bufnum) > 0 ? 'Active' : 'Hidden'
		if currentbuf == bufnum | let [centerbuf, s:onvim_centerbuf] = [bufnum, bufnum] | endif
		let bufpath = bufname(bufnum)
		if strlen(bufpath)
			let tab.path = fnamemodify(bufpath, ':p:~:.')
			let tab.sep = strridx(tab.path, s:onvim_dirsep, strlen(tab.path) - 2)
			let tab.label = tab.path[tab.sep + 1:]
			let pre = screen_num
			if getbufvar(bufnum, '&mod')
				let tab.hilite = 'Modified' . tab.hilite
				if show_mod | let pre = '+' . pre | endif
			endif
			if strlen(pre) | let tab.pre = pre . ' ' | endif
			let tabs_per_tail[tab.label] = get(tabs_per_tail, tab.label, 0) + 1
			let path_tabs += [tab]
		elseif -1 < index(['nofile','acwrite'], getbufvar(bufnum, '&buftype'))
			let tab.label = ( show_mod ? '!' . screen_num : screen_num ? screen_num . ' !' : '!' )
		else
			let tab.label = ( show_mod && getbufvar(bufnum, '&mod') ? '+' : '' )
			\             . ( screen_num ? screen_num : '*' )
		endif
		let tabs += [tab]
	endfor

	while len(filter(tabs_per_tail, 'v:val > 1'))
		let [ambiguous, tabs_per_tail] = [tabs_per_tail, {}]
		for tab in path_tabs
			if -1 < tab.sep && has_key(ambiguous, tab.label)
				let tab.sep = strridx(tab.path, s:onvim_dirsep, tab.sep - 1)
				let tab.label = tab.path[tab.sep + 1:]
			endif
			let tabs_per_tail[tab.label] = get(tabs_per_tail, tab.label, 0) + 1
		endfor
	endwhile

	let lft = { 'lasttab':  0, 'cut':  '.', 'indicator': '<', 'width': 0, 'half': &columns / 2 }
	let rgt = { 'lasttab': -1, 'cut': '.$', 'indicator': '>', 'width': 0, 'half': &columns - lft.half }

	let currentside = lft
	let lpad_width = strwidth(lpad)
	for tab in tabs
		let icon = ''
		if has_key(tab, 'path') && strlen(tab.path)
			let icon_sym = OnVimGetFileIcon(tab.num, tab.path)
			if !empty(icon_sym)
				let icon = icon_sym . ' '
			endif
		endif
		let tab.width = lpad_width + strwidth(tab.pre) + strwidth(icon) + strwidth(tab.label) + 1
		let tab.label = lpad . tab.pre . icon . substitute(strtrans(tab.label), '%', '%%', 'g') . ' '
		if centerbuf == tab.num
			let halfwidth = tab.width / 2
			let lft.width += halfwidth
			let rgt.width += tab.width - halfwidth
			let currentside = rgt
			continue
		endif
		let currentside.width += tab.width
	endfor
	if currentside is lft
		let [lft.width, rgt.width] = [0, lft.width]
	endif

	if ( lft.width + rgt.width ) > &columns
		let oversized
		\ = lft.width < lft.half ? [ [ rgt, &columns - lft.width ] ]
		\ : rgt.width < rgt.half ? [ [ lft, &columns - rgt.width ] ]
		\ :                        [ [ lft, lft.half ], [ rgt, rgt.half ] ]
		for [side, budget] in oversized
			let delta = side.width - budget
			while delta >= tabs[side.lasttab].width
				let delta -= remove(tabs, side.lasttab).width
			endwhile
			let endtab = tabs[side.lasttab]
			while delta > ( endtab.width - strwidth(strtrans(endtab.label)) )
				let endtab.label = substitute(endtab.label, side.cut, '', '')
			endwhile
			let endtab.label = substitute(endtab.label, side.cut, side.indicator, '')
		endfor
	endif

	if len(tabs) | let tabs[0].label = substitute(tabs[0].label, lpad, ' ', '') | endif

	let swallowclicks = '%'.(1 + tabpagenr('$')).'X'
	return s:onvim_tablineat
		\ ? join(map(tabs,'"%#BufTabLine".v:val.hilite."#" . "%".v:val.num."@OnVimTablineSwitchBuffer@" . strtrans(v:val.label)'),'') . '%#BufTabLineFill#' . swallowclicks
		\ : swallowclicks . join(map(tabs,'"%#BufTabLine".v:val.hilite."#" . strtrans(v:val.label)'),'') . '%#BufTabLineFill#'
endfunction
