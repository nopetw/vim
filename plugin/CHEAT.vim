command CHEAT exe ':sil call CHEAT()'
function! CHEAT()
	try|sil exe '%s/^M//g'
	cat|endt
	try|sil exe '%s/^[ \t]*//'
	cat|endt
	try|sil exe '%s/[ \t]*$//'
	cat|endt
	exe "%s/#/_/g"
	exe "%s/^/echo \"/"
	exe "%s/     /\" > \'/"
	exe "%s/$/.txt\'/"
	exe "w crun.sh"
	exe "!sh crun.sh"
	exe "!rm crun.sh"
endfun
