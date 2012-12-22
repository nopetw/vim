command! CONVERT call CONVERT()
function! TXT2EPUB1()
	exe "%!uniq"
	exe "%!uniq"
	exe "w"
	exe "call MYMAP()"
	exe "g/第[零一二三四五六七八九十百千0123456789]*[篇部章回卷集]/"
endfunction
function! CONVERT()
	exe "set fileencoding=utf-8" 
	exe "set fileformat=unix"
	exe "call G2B()"
	exe "%s/^[ \t]*//"
	exe "%s/[ \t]*$//"
	exe "%s/^M//g"
	exe "g/^[ \t]*$/d"
	exe "wq!"
	exe "g/第.*[篇部章回卷集].*第.*[篇部章回卷集]/s/\\(.*\\)\\(第\\)\\(.*\\)\\([篇部章回卷集]\\)\\(.*\\)/\\1\\r\2\\3\\4\\5/"
endfunction  
function! MYMAP() 
	exe 'map gn :M/第[零一二三四五六七八九十百千0123456789]*[篇部章回卷集]<CR>'
	exe "map g1 ^i\\part{<ESC> A}<ESC>"
	exe "map g2 ^i\\chapter{<ESC> A}<ESC>"
	exe "map g3 ^i\\section{<ESC> A}<ESC>"
	exe "map g4 ^i\\subsection{<ESC> A}<ESC>"
	exe "map g5 ^i\\subsubsection{<ESC> A}<ESC>"
	exe "map g6 ^i\\paragraph{<ESC> A }<ESC>"
	exe 'map gc :s/\\part{\\|\\chapter{\\|\\section{\\|\\subsection{\\|\\subsubsection{\\|paragraph{//<CR> :s/}$//<CR>'
endfunction
function! NOPETW()
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
	exe ':let i=1|g/^/s//\=i."{"/|let i+=1'
	exe 'sort /^\d\{-}{/'
	exe 'g/\%(^\d\{-}{第\1$\n\)\@<=\d\{-}{第\(.*\)$/d'
	exe "sort n"
	exe '%s/\d\{-}{//'
endfunction
fun! CODE2TXT()
	exe "%s/</＜/g"
	exe "%s/</＜/g"
	exe "%s/>/＞/g"
	exe "%s/&/＆/g"
try

endfun
function! OLDNOPETW()
	try
		exe "%s/^[　| |\t|\s]*//" 
	catch
	endtry
		normal gg
	try
		exe "%s/^M//g"
	catch
	endtry
	try
		exe "%s/<BR>/\r/"
		exe "%s/</font>//"
	catch
	endtry
		normal gg
	try
		exe "%s/^\\(正文\\)/\\1\r/"
		exe "g/^正文$/d"
	catch
	endtry
		normal gg
	try
		exe "g/第.*[篇部章回卷集].*第.*[篇部章回卷集]/s/\\(.*\\)\\(第\\)\\(.*\\)\\([篇部章回卷集]\\)\\(.*\\)/\\2\\3\\4\\5\r-\\1/"
		exe "g/第.*[篇部章回卷集].*楔子/s/楔子/\r楔子/"
	catch
	endtry
		normal gg
	try
		exe "g/^$/d"
	catch
	endtry
	try
		exe "%!uniq"
		exe "%s/\r//g"
	catch
	endtry
		normal gg
endfunction
