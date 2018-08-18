command READABLE exe ':sil call READABLE()'
\ | exe ':redr!'
function! READABLE()
	ec '更改為UNIX格式'
	" sil exe 'set ff=unix'
	sil exe 'w'
	sil exe 'redraw!'
endfun
