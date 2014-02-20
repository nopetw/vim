" 2014年 2月 9日 周日 07時10分39秒 CST
command NOPETW exe ':sil call NOPETW()'
\ | exe ':redr!'
function! NOPETW()
	ec '更改為UNIX格式'
	sil exe 'set ff=unix'
	ec '移除首尾空白'
	try|sil exe '%s/^M//g'
	cat|endt
	try|sil exe '%s/^[ \t]*//'
	cat|endt
	try|sil exe '%s/[ \t]*$//'
	cat|endt
	ec '同行章節斷行'
	" try|sil exe 'g/第.*[篇部卷集].*第.*[章回節]/s/\\(.*\\)\\(第\\)\\(.*\\)\\([篇部章回卷集]\\)\\(.*\\)/\\1\r\\2\\3\\4\\5/'
"	cat|endt
	try|sil exe 'g/第.*[篇部卷集].*第.*[章回節]/s/\(.*\)\(第\)\(.*\)\([篇部章回卷集]\)\(.*\)/\1\r\2\3\4\5/'
	" cat|endt
	" try|sil exe '%!uniq'
	" cat|endt
	" try|sil exe 'g/^$/d'
	" cat|endt
" 格式整理
	ec '格式整理'
	try|sil exe '%s/[圞垩堊卝龘]//g'
	cat|endt
	try|sil exe '%s/,/，/g'
	cat|endt
	try|sil exe '%s/[\"\*\|＊]/\*/g'
	cat|endt
	try|sil exe '%s/[wWｗＷ]/w/g'
	cat|endt
	try|sil exe '%s/[cCｃＣ][oOｏＯ][mMｍＭ]/com/g'
	cat|endt
	try|sil exe '%s/[nNｎＮ][eｅEＥ][tｔTＴ]/net/g'
	cat|endt
	try|sil exe '%s/[pPｐＰ][sSｓＳ][:：]/ps:/g'
	cat|endt
	try|sil exe '%s/[。\.]\{5,7\}/……/g'
	cat|endt
	try|sil exe '%s/~\{2,50\}/——/g'
	cat|endt
	try|sil exe '%s/\.\{2,3\}/…/g'
	cat|endt
	try|sil exe '%s/…\.\{1,2\}/……/g'
	cat|endt
	try|sil exe '%s/…\{3,40\}/……/g'
	cat|endt
	try|sil exe '%s/－\{3,20\}/——/g'
	cat|endt
	try|sil exe '%s/。[,|，|。]*/。/g'
	cat|endt
	try|sil exe '%s/？[,|，]*/？/g'
	cat|endt
	try|sil exe '%s/”[,|，|。]*/”/g'
	cat|endt
	try|sil exe '%s/@\{3,\}//g'
	cat|endt
	try|sil exe '%s/搜索最新更新盡在[a-z]*//'
	cat|endt
" 星號屏蔽字還原
	ec '星號屏蔽字還原'
	try|sil exe '%s/十有\*\{2\}/十有八九/g'
	cat|endt
	try|sil exe '%s/\*\{2\}不離十/八九不離十/g'
	cat|endt
	try|sil exe '%s/G\*\{2\}/GSM/g/'
	cat|endt
	try|sil exe '%s/感\*\{2\}彩/感情色彩/g'
	cat|endt
	try|sil exe '%s/強\*\{2\}寶/強大法寶/g'
	cat|endt
	try|sil exe '%s/\*\{2\}裸/赤裸裸/g'
	cat|endt
	try|sil exe '%s/天災\*\{2\}/天災人禍/g'
	cat|endt
	try|sil exe '%s/形形\*\{2\}/形形色色/g'
	cat|endt
	try|sil exe '%s/赤身\*\{2\}/赤身裸體/g'
	cat|endt
" 多字替換
	ec '多字替換'
	try|sil exe '%s/曖me[iì]/曖昧/g'
	cat|endt
	try|sil exe '%s/b[ěe]i[\\s|&nbsp;]*j[īi]ng/北京/g'
	cat|endt
	try|sil exe '%s/半shen/半身/g'
	cat|endt
	try|sil exe '%s/b[ìi]j[ìi]ng/畢竟/g'
	cat|endt
	try|sil exe '%s/ch[oō]ngd[oò]ng/衝動/g'
	cat|endt
	try|sil exe '%s/纏mian/纏綿/g'
	cat|endt
	try|sil exe '%s/成shu/成熟/g'
	cat|endt
	try|sil exe '%s/赤lu[oǒ]/赤裸/g'
	cat|endt
	try|sil exe '%s/春guang/春光/g'
	cat|endt
	try|sil exe '%s/dang校/黨校/g'
	cat|endt
	try|sil exe '%s/da子/韃子/g'
	cat|endt
	try|sil exe '%s/diao絲/屌絲/g'
	cat|endt
	try|sil exe '%s/d[úu][?:\\s|<br/>]*l[ìi]/獨立/g'
	cat|endt
	try|sil exe '%s/dú *cái/獨裁/g'
	cat|endt
	try|sil exe '%s/d[iì]f[āa]ng/地方/g'
	cat|endt
	try|sil exe '%s/d[ìi]\s\{0,2\}d[ūu]/帝都/g'
	cat|endt
	try|sil exe '%s/di國/帝國/g'
	cat|endt
	try|sil exe '%s/du\s\{0,2\}c[áa]i/獨裁/g'
	cat|endt
	try|sil exe '%s/f[ǎa]ngf[óo]/彷彿/g'
	cat|endt
	try|sil exe '%s/fei踢/飛踢/g'
	cat|endt
	try|sil exe '%s/feng流/風流/g'
	cat|endt
	try|sil exe '%s/風liu/風流/g'
	cat|endt
	try|sil exe '%s/f[èe]nn[ùu]/憤怒/g'
	cat|endt
	try|sil exe '%s/gao潮/高潮/g'
	cat|endt
	try|sil exe '%s/乾chai/乾柴/g'
	cat|endt
	try|sil exe '%s/gu[oò]ch[ée]ng/過程/g'
	cat|endt
	try|sil exe '%s/gu[āa]nx[iì]/關係/g'
	cat|endt
	try|sil exe '%s/g[ǎa]nji[àa]o/感覺/g'
	cat|endt
	try|sil exe '%s/國wu院/國務院/g'
	cat|endt
	try|sil exe '%s/han住/含住/g'
	cat|endt
	try|sil exe '%s/hai洛因/海洛因/g'
	cat|endt
	try|sil exe '%s/紅fen/紅粉/g'
	cat|endt
	try|sil exe '%s/火yao/火藥/g'
	cat|endt
	try|sil exe '%s/h[ǎa]oxi[àa]ng/好像/g'
	cat|endt
	try|sil exe '%s/hu[áa]ngs[èe]/黃色/g'
	cat|endt
	try|sil exe '%s/皇d[ìi]/皇帝/g'
	cat|endt
	try|sil exe '%s/昏昏yu睡/昏昏欲睡/g'
	cat|endt
	try|sil exe '%s/j[ìi]nháng/進行/g'
	cat|endt
	try|sil exe '%s/jinv/妓女/g'
	cat|endt
	try|sil exe '%s/jirou/雞肉/g'
	cat|endt
	try|sil exe '%s/ji者/記者/g'
	cat|endt
	try|sil exe '%s/ju花/菊花/g'
	cat|endt
	try|sil exe '%s/j[īi]動/激動/g'
	cat|endt
	try|sil exe '%s/jili[èe]/激烈/g'
	cat|endt
	try|sil exe '%s/肌r[òo]u/肌肉/g'
	cat|endt
	try|sil exe '%s/ji射/激射/g'
	cat|endt
	try|sil exe '%s/ji[ēe]ch[uù]/接觸/g'
	cat|endt
	try|sil exe '%s/j[ùu]li[èe]/劇烈/g'
	cat|endt
	try|sil exe '%s/jǐng惕/警惕/g'
	cat|endt
	try|sil exe '%s/k[ěe]n[ée]ng/可能/g'
	cat|endt
	try|sil exe '%s/開bao/開苞/g'
	cat|endt
	try|sil exe '%s/k[àa]o近/靠近/g'
	cat|endt
	try|sil exe '%s/ling辱/凌辱/g'
	cat|endt
	try|sil exe '%s/luan蛋/卵蛋/g'
	cat|endt
	try|sil exe '%s/臉sè/臉色/g'
	cat|endt
	try|sil exe '%s/lu出/露出/g'
	cat|endt
	try|sil exe '%s/m[ǎa]ny[ìi]/滿意/g'
	cat|endt
	try|sil exe '%s/m[ǎa]sh[àa]ng/馬上/g'
	cat|endt
	try|sil exe '%s/m[ée]iy[oǒ]u/沒有/g'
	cat|endt
	try|sil exe '%s/mei國/美國/g'
	cat|endt
	try|sil exe '%s/m[íi]ngb[áa]i/明白/g'
	cat|endt
	try|sil exe '%s/迷huan/迷幻/g'
	cat|endt
	try|sil exe '%s/mi茫/迷茫/g'
	cat|endt
	try|sil exe '%s/m[íi]n\s\{0,2\}zh[ǔu]/民主/g'
	cat|endt
	try|sil exe '%s/迷jian/迷奸/g'
	cat|endt
	try|sil exe '%s/mimi糊糊/迷迷糊糊/g'
	cat|endt
	try|sil exe '%s/末[?:\\s|<br/?>]*ì/末日/g'
	cat|endt
	try|sil exe '%s/n[àa]me/那麼/g'
	cat|endt
	try|sil exe '%s/n[ée]ngg[oò]u/能夠/g'
	cat|endt
	try|sil exe '%s/nán\s\{0,2\}hǎi/那會/g'
	cat|endt
	try|sil exe '%s/pi[áa]o客/嫖客/g'
	cat|endt
	try|sil exe '%s/p[áa]ngbi[āa]n/旁邊/g'
	cat|endt
	try|sil exe '%s/q[íi]gu[àa]i/奇怪/g'
	cat|endt
	try|sil exe '%s/qin獸/禽獸/g'
	cat|endt
	try|sil exe '%s/q[iī]ngch[uǔ]/清楚/g'
	cat|endt
	try|sil exe '%s/r[úu]gu[oǒ]/如果/g'
	cat|endt
	try|sil exe '%s/r[oó]ngy[ìi]/容易/g'
	cat|endt
	try|sil exe '%s/ru白色/乳白色/g'
	cat|endt
	" try|sil exe '%s/rén員/人員/g'
	" cat|endt
	" try|sil exe '%s/rén形/人形/g'
	" cat|endt
	try|sil exe '%s/sh[iì]ji[eè]/世界/g'
	cat|endt
	try|sil exe '%s/sh[ií]ji[aā]n/時間/g'
	cat|endt
	try|sil exe '%s/sh[ií]h[oò]u/時候/g'
	cat|endt
	try|sil exe '%s/sh[ií]me/什麼/g'
	cat|endt
	try|sil exe '%s/shi身/失身/g'
	cat|endt
	try|sil exe '%s/sh[ūu]j[ìi]/書記/g'
	cat|endt
	try|sil exe '%s/shu女/熟女/g'
	cat|endt
	" try|sil exe '%s/上chuang/上床/g'
	" cat|endt
	try|sil exe '%s/呻y[íi]n/呻吟/g'
	cat|endt
	try|sil exe '%s/sh[ēe]ngzh[íi]/生殖/g'
	cat|endt
	try|sil exe '%s/深gu/深谷/g'
	cat|endt
	try|sil exe '%s/雙xiu/雙修/g'
	cat|endt
	try|sil exe '%s/生r[ìi]/生日/g'
	cat|endt
	try|sil exe '%s/t[uū]r[áa]n/突然/g'
	cat|endt
	try|sil exe '%s/tiaojiao/調教/g'
	cat|endt
	try|sil exe '%s/推dao/推倒/g'
	cat|endt
	try|sil exe '%s/脫guang/脫光/g'
	cat|endt
	try|sil exe '%s/t[èe]bi[ée]/特別/g'
	cat|endt
	try|sil exe '%s/t[ōo]nggu[òo]/通過/g'
	cat|endt
	try|sil exe '%s/tian來tian去/舔來舔去/g'
	cat|endt
	try|sil exe '%s/w[ēe]ixi[ée]/威脅/g'
	cat|endt
	try|sil exe '%s/wèizh[ìi]/位置/g'
	cat|endt
	try|sil exe '%s/wei員/委員/g'
	cat|endt
	try|sil exe '%s/xiu長/修長/g'
	cat|endt
	try|sil exe '%s/褻du/褻瀆/g'
	cat|endt
	try|sil exe '%s/xing福/幸福/g'
	cat|endt
	try|sil exe '%s/小bo/小波/g'
	cat|endt
	try|sil exe '%s/xiong\([^a-z]\)/胸\1/g'
	cat|endt
	try|sil exe '%s/y[iī]y[àa]ng/一樣/g'
	cat|endt
	try|sil exe '%s/y[īi]di[ǎa]n/一點/g'
	cat|endt
	try|sil exe '%s/y[ǐi]j[īi]ng/已經/g'
	cat|endt
	try|sil exe '%s/疑huo/疑惑/g'
	cat|endt
	try|sil exe '%s/陽w[ěe]i/陽痿/g'
	cat|endt
	try|sil exe '%s/yaotou/搖頭/g'
	cat|endt
	try|sil exe '%s/yao頭/搖頭/g'
	cat|endt
	try|sil exe '%s/搖tou/搖頭/g'
	cat|endt
	try|sil exe '%s/yezhan/野戰/g'
	cat|endt
	try|sil exe '%s/you餌/誘餌/g'
	cat|endt
	try|sil exe '%s/you惑/誘惑/g'
	cat|endt
	try|sil exe '%s/you導/誘導/g'
	cat|endt
	try|sil exe '%s/引you/引誘/g'
	cat|endt
	try|sil exe '%s/you人/誘人/g'
	cat|endt
	try|sil exe '%s/旖ni/旖旎/g'
	cat|endt
	try|sil exe '%s/yu念/欲念/g'
	cat|endt
	try|sil exe '%s/you敵深入/誘敵深入/g'
	cat|endt
	try|sil exe '%s/z[iì]j[iǐ]/自己/g'
	cat|endt
	try|sil exe '%s/z[ìi][?:\\s|<br/?>]*y[oó]u/自由/g'
	cat|endt
	try|sil exe '%s/zh[iī]d?[àa]u?o/知道/g'
	cat|endt
	try|sil exe '%s/zha藥/炸藥/g'
	cat|endt
	try|sil exe '%s/zhan有/佔有/g'
	cat|endt
	try|sil exe '%s/政f[ǔu]/政府/g'
	cat|endt
	try|sil exe '%s/zh[èe]ng\s\{0,2\}f[uǔ]/政府/g'
	cat|endt
	try|sil exe '%s/zong理/總理/g'
	cat|endt
	try|sil exe '%s/zh[ōo]ngy[āa]ng/中央/g'
	cat|endt
	try|sil exe '%s/中\s*yang/中央/g'
	cat|endt
	try|sil exe '%s/zu[oǒ]y[oò]u/左右/g'
	cat|endt
	try|sil exe '%s/zh[oō]uw[ée]i/周圍/g'
	cat|endt
	try|sil exe '%s/中nan海/中南海/g'
	cat|endt
	try|sil exe '%s/中j委/中紀委/g'
	cat|endt
	try|sil exe '%s/中zu部/中組部/g'
	cat|endt
	try|sil exe '%s/政zhi局/政治局/g'
	cat|endt
	try|sil exe '%s/\(昨|一|時|余\)[?:<br/?>|&nbsp;|\\s]*ì/\1日/g'
	cat|endt

	try|sil exe '%s/[wW]\{3\}.//g'
	cat|endt
	try|sil exe '%s/&amp;/＆/g'
	cat|endt
	try|sil exe '%s/&#38;/＆/g'
	cat|endt
	try|sil exe '%s/&lt;/＜/g'
	cat|endt
	try|sil exe '%s/&#60;/＜/g'
	cat|endt
	try|sil exe '%s/&gt;/＞/g'
	cat|endt
	try|sil exe '%s/&#62;/＞/g'
	cat|endt
	try|sil exe '%s/&#o39;/\'/g'
	cat|endt
	try|sil exe '%s/&#039;/\'/g'
	cat|endt
	try|sil exe '%s/<BR>/\r/'
		sil exe '%s/<\/font>//'
	cat|endt
" 單字替換
	ec '單字替換'
	try|sil exe '%s/b[āà]ng/棒/g'
	cat|endt
	try|sil exe '%s/bào/爆/g'
	cat|endt
	try|sil exe '%s/b[àa]/吧/g'
	cat|endt
	try|sil exe '%s/bī/逼/g'
	cat|endt
	try|sil exe '%s/bō/波/g'
	cat|endt
	try|sil exe '%s/cāo/操/g'
	cat|endt
	try|sil exe '%s/cǎo/草/g'
	cat|endt
	try|sil exe '%s/cào/操/g'
	cat|endt
	try|sil exe '%s/chāng/娼/g'
	cat|endt
	try|sil exe '%s/chang/娼/g'
	cat|endt
	try|sil exe '%s/cháo/潮/g'
	cat|endt
	try|sil exe '%s/chā/插/g'
	cat|endt
	try|sil exe '%s/chéng/成/g'
	cat|endt
	try|sil exe '%s/chōu/抽/g'
	cat|endt
	try|sil exe '%s/chu[áa]ng/床/g'
	cat|endt
	try|sil exe '%s/chún/唇/g'
	cat|endt
	try|sil exe '%s/ch[ūu]n/春/g'
	cat|endt
	try|sil exe '%s/cuō/搓/g'
	cat|endt
	try|sil exe '%s/cū/粗/g'
	cat|endt
	try|sil exe '%s/dǎng/黨/g'
	cat|endt
	try|sil exe '%s/dàng/蕩/g'
	cat|endt
	try|sil exe '%s/dāo/刀/g'
	cat|endt
	try|sil exe '%s/dòng/洞/g'
	cat|endt
	try|sil exe '%s/diao/屌/g'
	cat|endt
	try|sil exe '%s/fǎ/法/g'
	cat|endt
	try|sil exe '%s/féi/肥/g'
	cat|endt
	try|sil exe '%s/fù/婦/g'
	cat|endt
	try|sil exe '%s/guān/官/g'
	cat|endt
	try|sil exe '%s/hán/含/g'
	cat|endt
	try|sil exe '%s/hóu/喉/g'
	cat|endt
	try|sil exe '%s/hòu/厚/g'
	cat|endt
	try|sil exe '%s/huā/花/g'
	cat|endt
	try|sil exe '%s/huá/华/g'
	cat|endt
	try|sil exe '%s/huò/惑/g'
	cat|endt
	try|sil exe '%s/hùn/混/g'
	cat|endt
	try|sil exe '%s/hún/魂/g'
	cat|endt
	try|sil exe '%s/jiǔ/九/g'
	cat|endt
	try|sil exe '%s/j[īi]ng/精/g'
	cat|endt
	try|sil exe '%s/jìn/禁/g'
	cat|endt
	try|sil exe '%s/jǐng/警/g'
	cat|endt
	try|sil exe '%s/jiāng/江/g'
	cat|endt
	try|sil exe '%s/jiān/奸/g'
	cat|endt
	try|sil exe '%s/jiāo/交/g'
	cat|endt
	try|sil exe '%s/jūn/軍/g'
	cat|endt
	try|sil exe '%s/jū/拘/g'
	cat|endt
	try|sil exe '%s/jú/局/g'
	cat|endt
	try|sil exe '%s/jī/激/g'
	cat|endt
	try|sil exe '%s/激ān/奸/g'
	cat|endt
	try|sil exe '%s/kù/褲/g'
	cat|endt
	try|sil exe '%s/k[àa]n/看/g'
	cat|endt
	try|sil exe '%s/[1l]àng/浪/g'
	cat|endt
	try|sil exe '%s/liáo/撩/g'
	cat|endt
	try|sil exe '%s/liú/流/g'
	cat|endt
	try|sil exe '%s/lì/莉/g'
	cat|endt
	try|sil exe '%s/liè/烈/g'
	cat|endt
	try|sil exe '%s/[1l]uàn/亂/g'
	cat|endt
	try|sil exe '%s/lún/倫/g'
	cat|endt
	try|sil exe '%s/luǒ/裸/g'
	cat|endt
	try|sil exe '%s/lòu/露/g'
	cat|endt
	try|sil exe '%s/[l1]ù/露/g'
	cat|endt
	try|sil exe '%s/lǜ/綠/g'
	cat|endt
	try|sil exe '%s/mǎi/買/g'
	cat|endt
	try|sil exe '%s/mài/賣/g'
	cat|endt
	try|sil exe '%s/máo/毛/g'
	cat|endt
	try|sil exe '%s/mā/媽/g'
	cat|endt
	try|sil exe '%s/méng/蒙/g'
	cat|endt
	try|sil exe '%s/mén/門/g'
	cat|endt
	try|sil exe '%s/miè/滅/g'
	cat|endt
	try|sil exe '%s/mí/迷/g'
	cat|endt
	try|sil exe '%s/mì/蜜/g'
	cat|endt
	try|sil exe '%s/mō/摸/g'
	cat|endt
	try|sil exe '%s/nǎi/奶/g'
	cat|endt
	try|sil exe '%s/nèn/嫩/g'
	cat|endt
	try|sil exe '%s/niào/尿/g'
	cat|endt
	try|sil exe '%s/niē/捏/g'
	cat|endt
	try|sil exe '%s/nòng/弄/g'
	cat|endt
	try|sil exe '%s/\([^A-z]\)nv\([^A-z]\)/\1女\2/g'
	cat|endt
	try|sil exe '%s/nǚ/女/g'
	cat|endt
	try|sil exe '%s/pào/炮/g'
	cat|endt
	try|sil exe '%s/piàn/片/g'
	cat|endt
	try|sil exe '%s/qiāng/槍/g'
	cat|endt
	try|sil exe '%s/qíng/情/g'
	cat|endt
	try|sil exe '%s/qīn/親/g'
	cat|endt
	try|sil exe '%s/qiú/求/g'
	cat|endt
	try|sil exe '%s/quán/全/g'
	cat|endt
	try|sil exe '%s/rén/人/g'
	cat|endt
	try|sil exe '%s/rì/日/g'
	cat|endt
	try|sil exe '%s/\([^a-z]\)ri/\1日/g'
	cat|endt
	try|sil exe '%s/<\/p>\n<p>\s*ì/日/g'
	cat|endt
	try|sil exe '%s/rǔ/乳/g'
	cat|endt
	try|sil exe '%s/sāo/騷/g'
	cat|endt
	try|sil exe '%s/sǎo/騷/g'
	cat|endt
	try|sil exe '%s/sè/色/g'
	cat|endt
	try|sil exe '%s/\([^a-z]\)se/\1色/g'
	cat|endt
	try|sil exe '%s/shā/殺/g'
	cat|endt
	try|sil exe '%s/shēn/呻/g'
	cat|endt
	try|sil exe '%s/shén/神/g'
	cat|endt
	try|sil exe '%s/shè/射/g'
	cat|endt
	try|sil exe '%s/shǐ/屎/g'
	cat|endt
	try|sil exe '%s/shì/侍/g'
	cat|endt
	try|sil exe '%s/sǐ/死/g'
	cat|endt
	try|sil exe '%s/sī/私/g'
	cat|endt
	try|sil exe '%s/shǔn/吮/g'
	cat|endt
	try|sil exe '%s/sǔn/吮/g'
	cat|endt
	try|sil exe '%s/sū/酥/g'
	cat|endt
	try|sil exe '%s/tān/貪/g'
	cat|endt
	try|sil exe '%s/tiǎn/舔/g'
	cat|endt
	try|sil exe '%s/tǐng/挺/g'
	cat|endt
	try|sil exe '%s/tǐ/體/g'
	cat|endt
	try|sil exe '%s/tǒng/捅/g'
	cat|endt
	try|sil exe '%s/tōu/偷/g'
	cat|endt
	try|sil exe '%s/tou/偷/g'
	cat|endt
	try|sil exe '%s/tuǐ/腿/g'
	cat|endt
	try|sil exe '%s/tūn/吞/g'
	cat|endt
	try|sil exe '%s/tún/臀/g'
	cat|endt
	try|sil exe '%s/wēn/溫/g'
	cat|endt
	try|sil exe '%s/wěn/吻/g'
	cat|endt
	try|sil exe '%s/xiǎo/小/g'
	cat|endt
	try|sil exe '%s/x[ìi]ng/性/g'
	cat|endt
	try|sil exe '%s/xiōng/胸/g'
	cat|endt
	try|sil exe '%s/xī/吸/g'
	cat|endt
	try|sil exe '%s/xí/习/g'
	cat|endt
	try|sil exe '%s/xué/穴/g'
	cat|endt
	try|sil exe '%s/xuè/穴/g'
	cat|endt
	try|sil exe '%s/xùe/穴/g'
	cat|endt
	try|sil exe '%s/xuan/宣/g'
	cat|endt
	try|sil exe '%s/yāng/央/g'
	cat|endt
	try|sil exe '%s/yàn/艷/g'
	cat|endt
	try|sil exe '%s/y[īi]n/陰/g'
	cat|endt
	try|sil exe '%s/yào/藥/g'
	cat|endt
	try|sil exe '%s/yé/爺/g'
	cat|endt
	try|sil exe '%s/yòu/誘/g'
	cat|endt
	try|sil exe '%s/zàng/髒/g'
	cat|endt
	try|sil exe '%s/\([^a-z]\)y[uù]/\1欲/g'
	cat|endt
	try|sil exe '%s/yín/淫/g'
	cat|endt
	try|sil exe '%s/zhēn/針/g'
	cat|endt
	try|sil exe '%s/zēn/針/g'
	cat|endt
	try|sil exe '%s/zhà/炸/g'
	cat|endt
	try|sil exe '%s/zhèng/政/g'
	cat|endt
	try|sil exe '%s/zǒu/走/g'
	cat|endt
	try|sil exe '%s/zuì/罪/g'
	cat|endt
	try|sil exe '%s/zuò/做/g'
	cat|endt
	try|sil exe '%s/zhong/中/g'
	cat|endt
	try|sil exe '%s/獃/呆/g'
	cat|endt
" 特殊字符
	ec '特殊字符'
	try|sil exe '%s/&#183;/·/g'
	cat|endt
" 誤替還原
	ec '誤替還原'
	try|sil exe '%s/碧欲/碧玉/g'
	cat|endt
	try|sil exe '%s/美欲/美玉/g'
	cat|endt
	try|sil exe '%s/欲石/玉石/g'
	cat|endt
	try|sil exe '%s/惜欲/惜玉/g'
	cat|endt
	try|sil exe '%s/寶欲/寶玉/g'
	cat|endt
	try|sil exe '%s/品性/品行/g'
	cat|endt
	try|sil exe '%s/德性/德行/g'
	cat|endt
	try|sil exe '%s/波ok/book/g'
	cat|endt
	try|sil exe '%s/波SS/BOSS/g'
	cat|endt
" 其他修正
	ec '其他修正'
	try|sil exe '%s/n吧/nba/g'
	cat|endt
	try|sil exe '%s/彌倆/你倆/g'
	cat|endt
	try|sil exe '%s/伱/你/g'
	cat|endt
	try|sil exe '%s/獃/呆/g'
	cat|endt
 " 特殊關鍵字
	ec '特殊關鍵字'
	try|sil exe '%s/[\[［][A-z|\.]\{3,\}[^\]]*[\]］]//g'
	cat|endt
	try|sil exe '%s/[({]*www\..*[com|net][})]*//g'
	cat|endt
	try|sil exe '%s/[{〖]請在百度搜索.*[}〗]//g'
	cat|endt
	try|sil exe '%s/\[搜索最新更新盡在[A-z\.]*\]//g'
	cat|endt
	try|sil exe '%s/，到網址//g'
	cat|endt
	try|sil exe '%s/(本章免費)//g'
	cat|endt
	try|sil exe '%s/(頂點小說手打小說)//g'
	cat|endt
	try|sil exe '%s/(.*奇書網.*)//g'
	cat|endt
"
	try|sil exe 'g/txt全*集*下載網址：http:.*html$/d'
	cat|endt
	try|sil exe '%s/免責聲明//g'
	cat|endt
	try|sil exe '%s/☆☆☆正文[開結][始束]\[80txt\.com\]☆☆☆//g'
	cat|endt
	try|sil exe 'g/註：如果你發現本書未完屬於連載更新請到/d'
	cat|endt
	try|sil exe 'g/[聲申]明:本書由奇書網([www\.|ww]*Qisuu.com)自網絡/d'
	cat|endt
	try|sil exe 'g/1.八零電子書免費為書友提供/d'
	cat|endt
	try|sil exe 'g/2.八零電子書所有txt小說均來自書友收集整理自網絡/d'
	cat|endt
	try|sil exe 'g/A:如果你發現本書尚未完結或者連載中，請到www.80txt.com/d'
	cat|endt
	try|sil exe 'g/B:【更多精彩好書，更多原創TXT手機電子書，.*】$/d'
	cat|endt
	try|sil exe 'g/C:本書由八零電子書/d'
	cat|endt
	try|sil exe 'g/更新時間:/d'
	cat|endt
	try|sil exe 'g/^更新時間/d'
	cat|endt
	try|sil exe 'g/^更多精彩，/d'
	cat|endt
	try|sil exe 'sort /^\d\{-}{/'
	cat|endt
" 收尾
	ec '收尾'
	try|sil exe '%s/[{(\[【][}\])】]//g'
	cat|endt
	try|sil exe '%s/^M//g'
	cat|endt
	try|sil exe '%s/^[　| |\t]*//'
	cat|endt
	try|sil exe '%s/[　| |\t]*$//'
	cat|endt
	try|sil exe 'g/^[　| |\t]*$/d'
	cat|endt
" 移除重複章節名稱
	ec '移除重複章節名稱'
	sil exe ':let i=1|g/^/s//\=i."{"/|let i+=1'
	sil exe 'g/\%(^\d\{-}{第\1$\n\)\@<=\d\{-}{第\(.*\)$/d'
	sil exe 'sort n'
	sil exe '%s/\d\{-}{//'
	norm gg
	sil exe 'w'
	sil exe 'redraw!'
endfun
