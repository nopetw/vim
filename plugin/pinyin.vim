function! PINYIN()
	try|sil exe "g/ā/s/$/1/" |cat|endt
	try|sil exe "g/á/s/$/2/" |cat|endt
	try|sil exe "g/ǎ/s/$/3/" |cat|endt
	try|sil exe "g/à/s/$/4/" |cat|endt
	try|sil exe "g/ē/s/$/1/" |cat|endt
	try|sil exe "g/é/s/$/2/" |cat|endt
	try|sil exe "g/ě/s/$/3/" |cat|endt
	try|sil exe "g/è/s/$/4/" |cat|endt
	try|sil exe "g/ō/s/$/1/" |cat|endt
	try|sil exe "g/ó/s/$/2/" |cat|endt
	try|sil exe "g/ǒ/s/$/3/" |cat|endt
	try|sil exe "g/ò/s/$/4/" |cat|endt
	try|sil exe "g/ī/s/$/1/" |cat|endt
	try|sil exe "g/í/s/$/2/" |cat|endt
	try|sil exe "g/ǐ/s/$/3/" |cat|endt
	try|sil exe "g/ì/s/$/4/" |cat|endt
	try|sil exe "g/ū/s/$/1/" |cat|endt
	try|sil exe "g/ú/s/$/2/" |cat|endt
	try|sil exe "g/ǔ/s/$/3/" |cat|endt
	try|sil exe "g/ù/s/$/4/" |cat|endt
	try|sil exe "g/ü/s/$/0/" |cat|endt
	try|sil exe "g/ǘ/s/$/2/" |cat|endt
	try|sil exe "g/ǚ/s/$/3/" |cat|endt
	try|sil exe "g/ǜ/s/$/4/" |cat|endt
	try|sil exe "g/ń/s/$/2/" |cat|endt
	try|sil exe "g/ň/s/$/3/" |cat|endt
	try|sil exe "g//s/$/2/" |cat|endt
	try|sil exe "%s/[āáǎà]/a/" |cat|endt
	try|sil exe "%s/[ēéěè]/e/" |cat|endt
	try|sil exe "%s/[ōóǒò]/o/" |cat|endt
	try|sil exe "%s/[īíǐì]/i/" |cat|endt
	try|sil exe "%s/[ūúǔù]/u/" |cat|endt
	try|sil exe "%s/[üǘǚǜ]/v/" |cat|endt
	try|sil exe "%s[ńň]/n/" |cat|endt
	try|sil exe "%s[]/m/" |cat|endt
endfun