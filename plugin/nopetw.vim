"Sun 12 30 01:04:09 CST 2012
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
		exe "g/第.*[篇部章回卷集].*第.*[篇部章回卷集]/s/\\(.*\\)\\(第\\)\\(.*\\)\\([篇部章回卷集]\\)\\(.*\\)/\\2\\3\\4\\5\r-\\1/"
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
		exe "%s/</font>//"
	catch
	exe ':let i=1|g/^/s//\=i."{"/|let i+=1'
	exe 'sort /^\d\{-}{/'
	exe 'g/\%(^\d\{-}{第\1$\n\)\@<=\d\{-}{第\(.*\)$/d'
	exe "sort n"
	exe '%s/\d\{-}{//'
endfun
