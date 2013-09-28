"Sun 12 30 01:04:09 CST 2012
command NOPETW execute ":silent call NOPETW()"
\ | execute ":redraw!"
function! NOPETW()
	exe "set ff=unix"
	try
		exe "%s/^[ \t]*//"
		catch
	endtry
	try
		exe "%s/[ \t]*$//"
		catch
	endtry
	try
		exe "%s/^M//g"
		catch
	endtry
	try
		exe "g/^[ \t]*$/d"
		catch
	endtry
	try
		exe "g/第.*[篇部卷集].*第.*[章回節]/s/\\(.*\\)\\(第\\)\\(.*\\)\\([篇部章回卷集]\\)\\(.*\\)/\\1\r\\2\\3\\4\\5/"
		catch
	endtry
	try
		exe "%!uniq"
		catch
	endtry
	try
		exe "%s/\r//g"
		catch
	endtry
	try
		exe "g/^$/d"
		catch
	endtry
	try
		exe "%s/[wW]\{3\}.//g"
		catch
	endtry
	try
		exe "%s/&amp;/＆/g"
		catch
	endtry
	try
		exe "%s/&#38;/＆/g"
		catch
	endtry
	try
		exe "%s/&lt;/＜/g"
		catch
	endtry
	try
		exe "%s/&#60;/＜/g"
		catch
	endtry
	try
		exe "%s/&gt;/＞/g"
		catch
	endtry
	try
		exe "%s/&#62;/＞/g"
		catch
	endtry
	try
		exe "%s/&#o39;/\'/g"
		catch
	endtry
	try
		exe "%s/&#039;/\'/g"
		catch
	endtry
	try
		exe "%s/<BR>/\r/"
		exe "%s/<\/font>//"
		catch
	endtry
	try
		exe ':let i=1|g/^/s//\=i."{"/|let i+=1'
		catch
	endtry
	try
		exe 'sort /^\d\{-}{/'
		exe 'g/\%(^\d\{-}{第\1$\n\)\@<=\d\{-}{第\(.*\)$/d'
		exe "sort n"
		exe '%s/\d\{-}{//'
		catch
	endtry
	try
		exe '%s/(頂點小說手打小說)//g'
		catch
	endtry
	try
		exe 'g/聲明:本書由奇書網(www.Qisuu.com)自網絡/d'
		catch
	endtry
	try
		exe 'g/申明:本書由奇書網(www.Qisuu.com)自網絡/d'
		catch
	endtry
	try
		exe 's/(奇書網-Www.Qisuu.Com)//'
		catch
	endtry
	try
		exe 'g/更新時間:/d'
		catch
	endtry
	try
		exe 'g/^更新時間/d'
		catch
	endtry
	try
		exe 'g/^更多精彩，/d'
		catch
	endtry
	normal gg
	exe "w"
	exe "redraw!"
endfun
