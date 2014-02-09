"2014年 2月 9日 周日 07時10分39秒 CST
command NOPETW execute ":silent call NOPETW()"
\ | execute ":redraw!"
function! NOPETW()
	echo "更改為UNIX格式"
	silent exe "set ff=unix"
	echo "移除首尾空白"
	try
		silent exe "%s/^M//g"
		catch
	endtry
	try
		silent exe "%s/^[ \t]*//"
		catch
	endtry
	try
		silent exe "%s/[ \t]*$//"
		catch
	endtry
	echo "同行章節斷行"
	try
		silent exe "g/第.*[篇部卷集].*第.*[章回節]/s/\\(.*\\)\\(第\\)\\(.*\\)\\([篇部章回卷集]\\)\\(.*\\)/\\1\r\\2\\3\\4\\5/"
		catch
	endtry
	try
		silent exe "%!uniq"
		catch
	endtry
	try
		silent exe "g/^$/d"
		catch
	endtry
"格式整理
	echo "格式整理"
	try
		silent exe "%s/[圞垩堊卝龘]//g"
		catch
	endtry
	try
		silent exe "%s/,/，/g"
		catch
	endtry
	try
		silent exe "%s/[\"\*\|＊]/\*/g"
		catch
	endtry
	try
		silent exe "%s/[wWｗＷ]\{3\}/www/g"
		catch
	endtry
	try
		silent exe "%s/[cCｃＣ][oOｏＯ][mMｍＭ]/com/g"
		catch
	endtry
	try
		silent exe "%s/[nNｎＮ][eｅEＥ][tｔTＴ]/net/g"
		catch
	endtry
	try
		silent exe "%s/[pPｐＰ][sSｓＳ][:：]/ps:/g"
		catch
	endtry
	try
		silent exe "%s/。\{5,7\}/……/g"
		catch
	endtry
	try
		silent exe "%s/~\{2,50\}/——/g"
		catch
	endtry
	try
		silent exe "%s/…\{3,40\}/……/g"
		catch
	endtry
	try
		silent exe "%s/－\{3,20\}/——/g"
		catch
	endtry
	try
		silent exe "%s/。[,|，|。]*/。/g"
		catch
	endtry
	try
		silent exe "%s/？[,|，]*/？/g"
		catch
	endtry
	try
		silent exe "%s/”[,|，|。]*/”/g"
		catch
	endtry
	try
		silent exe "%s/@\{3,\}//g"
		catch
	endtry
	try
		silent exe "%s/搜索最新更新盡在[a-z]*//"
		catch
	endtry
"星號屏蔽字還原
	echo "星號屏蔽字還原"
	try
		silent exe "%s/十有\*\{2\}/十有八九/g"
		catch
	endtry
	try
		silent exe "%s/\*\{2\}不離十/八九不離十/g"
		catch
	endtry
	try
		silent exe "%s/G\*\{2\}/GSM/g/"
		catch
	endtry
	try
		silent exe "%s/感\*\{2\}彩/感情色彩/g"
		catch
	endtry
	try
		silent exe "%s/強\*\{2\}寶/強大法寶/g"
		catch
	endtry
"多字替換
	echo "多字替換"
	try
		silent exe '%s/曖me[iì]/曖昧/g'
		catch
	endtry
	try
		silent exe '%s/b[ěe]i[\\s|&nbsp;]*j[īi]ng/北京/g'
		catch
	endtry
	try
		silent exe '%s/半shen/半身/g'
		catch
	endtry
	try
		silent exe '%s/b[ìi]j[ìi]ng/畢竟/g'
		catch
	endtry
	try
		silent exe '%s/ch[oō]ngd[oò]ng/衝動/g'
		catch
	endtry
	try
		silent exe '%s/纏mian/纏綿/g'
		catch
	endtry
	try
		silent exe '%s/成shu/成熟/g'
		catch
	endtry
	try
		silent exe '%s/赤lu[oǒ]/赤裸/g'
		catch
	endtry
	try
		silent exe '%s/春guang/春光/g'
		catch
	endtry
	try
		silent exe '%s/dang校/黨校/g'
		catch
	endtry
	try
		silent exe '%s/da子/韃子/g'
		catch
	endtry
	try
		silent exe '%s/diao絲/屌絲/g'
		catch
	endtry
	try
		silent exe '%s/d[úu][?:\\s|<br/>]*l[ìi]/獨立/g'
		catch
	endtry
	try
		silent exe '%s/dú *cái/獨裁/g'
		catch
	endtry
	try
		silent exe '%s/d?[iì]f[āa]ng/地方/g'
		catch
	endtry
	try
		silent exe '%s/d[ìi]d[ūu]/帝都/g'
		catch
	endtry
	try
		silent exe '%s/di國/帝國/g'
		catch
	endtry
	try
		silent exe '%s/du\s\{0,2\}c[áa]i/獨裁/g'
		catch
	endtry
	try
		silent exe '%s/f[ǎa]ngf[óo]/彷彿/g'
		catch
	endtry
	try
		silent exe '%s/fei踢/飛踢/g'
		catch
	endtry
	try
		silent exe '%s/feng流/風流/g'
		catch
	endtry
	try
		silent exe '%s/風liu/風流/g'
		catch
	endtry
	try
		silent exe '%s/f[èe]nn[ùu]/憤怒/g'
		catch
	endtry
	try
		silent exe '%s/gao潮/高潮/g'
		catch
	endtry
	try
		silent exe '%s/乾chai/乾柴/g'
		catch
	endtry
	try
		silent exe '%s/gu[oò]ch[ée]ng/過程/g'
		catch
	endtry
	try
		silent exe '%s/gu[āa]nx[iì]/關係/g'
		catch
	endtry
	try
		silent exe '%s/g[ǎa]nji[àa]o/感覺/g'
		catch
	endtry
	try
		silent exe '%s/國wu院/國務院/g'
		catch
	endtry
	try
		silent exe '%s/han住/含住/g'
		catch
	endtry
	try
		silent exe '%s/hai洛因/海洛因/g'
		catch
	endtry
	try
		silent exe '%s/紅fen/紅粉/g'
		catch
	endtry
	try
		silent exe '%s/火yao/火藥/g'
		catch
	endtry
	try
		silent exe '%s/h[ǎa]oxi[àa]ng/好像/g'
		catch
	endtry
	try
		silent exe '%s/hu[áa]ngs[èe]/黃色/g'
		catch
	endtry
	try
		silent exe '%s/皇d[ìi]/皇帝/g'
		catch
	endtry
	try
		silent exe '%s/昏昏yu睡/昏昏欲睡/g'
		catch
	endtry
	try
		silent exe '%s/j[ìi]nháng/進行/g'
		catch
	endtry
	try
		silent exe '%s/jinv/妓女/g'
		catch
	endtry
	try
		silent exe '%s/jirou/雞肉/g'
		catch
	endtry
	try
		silent exe '%s/ji者/記者/g'
		catch
	endtry
	try
		silent exe '%s/ju花/菊花/g'
		catch
	endtry
	try
		silent exe '%s/j[īi]動/激動/g'
		catch
	endtry
	try
		silent exe '%s/jili[èe]/激烈/g'
		catch
	endtry
	try
		silent exe '%s/肌r[òo]u/肌肉/g'
		catch
	endtry
	try
		silent exe '%s/ji射/激射/g'
		catch
	endtry
	try
		silent exe '%s/ji[ēe]ch[uù]/接觸/g'
		catch
	endtry
	try
		silent exe '%s/j[ùu]li[èe]/劇烈/g'
		catch
	endtry
	try
		silent exe '%s/jǐng惕/警惕/g'
		catch
	endtry
	try
		silent exe '%s/k[ěe]n[ée]ng/可能/g'
		catch
	endtry
	try
		silent exe '%s/開bao/開苞/g'
		catch
	endtry
	try
		silent exe '%s/k[àa]o近/靠近/g'
		catch
	endtry
	try
		silent exe '%s/ling辱/凌辱/g'
		catch
	endtry
	try
		silent exe '%s/luan蛋/卵蛋/g'
		catch
	endtry
	try
		silent exe '%s/臉sè/臉色/g'
		catch
	endtry
	try
		silent exe '%s/lu出/露出/g'
		catch
	endtry
	try
		silent exe '%s/m[ǎa]ny[ìi]/滿意/g'
		catch
	endtry
	try
		silent exe '%s/m[ǎa]sh[àa]ng/馬上/g'
		catch
	endtry
	try
		silent exe '%s/m[ée]iy[oǒ]u/沒有/g'
		catch
	endtry
	try
		silent exe '%s/mei國/美國/g'
		catch
	endtry
	try
		silent exe '%s/m[íi]ngb[áa]i/明白/g'
		catch
	endtry
	try
		silent exe '%s/迷huan/迷幻/g'
		catch
	endtry
	try
		silent exe '%s/mi茫/迷茫/g'
		catch
	endtry
	try
		silent exe '%s/m[íi]n\s\{0,2\}zh[ǔu]/民主/g'
		catch
	endtry
	try
		silent exe '%s/迷jian/迷奸/g'
		catch
	endtry
	try
		silent exe '%s/mimi糊糊/迷迷糊糊/g'
		catch
	endtry
	try
		silent exe '%s/末[?:\\s|<br/?>]*ì/末日/g'
		catch
	endtry
	try
		silent exe '%s/n[àa]me/那麼/g'
		catch
	endtry
	try
		silent exe '%s/n[ée]ngg[oò]u/能夠/g'
		catch
	endtry
	try
		silent exe '%s/nán\s\{0,2\}hǎi/那會/g'
		catch
	endtry
	try
		silent exe '%s/pi[áa]o客/嫖客/g'
		catch
	endtry
	try
		silent exe '%s/p[áa]ngbi[āa]n/旁邊/g'
		catch
	endtry
	try
		silent exe '%s/q[íi]gu[àa]i/奇怪/g'
		catch
	endtry
	try
		silent exe '%s/qin獸/禽獸/g'
		catch
	endtry
	try
		silent exe '%s/q[iī]ngch[uǔ]/清楚/g'
		catch
	endtry
	try
		silent exe '%s/r[úu]gu[oǒ]/如果/g'
		catch
	endtry
	try
		silent exe '%s/r[oó]ngy[ìi]/容易/g'
		catch
	endtry
	try
		silent exe '%s/ru白色/乳白色/g'
		catch
	endtry
	try
		silent exe '%s/rén員/人員/g'
		catch
	endtry
	try
		silent exe '%s/rén形/人形/g'
		catch
	endtry
	try
		silent exe '%s/sh[iì]ji[eè]/世界/g'
		catch
	endtry
	try
		silent exe '%s/sh[ií]ji[aā]n/時間/g'
		catch
	endtry
	try
		silent exe '%s/sh[ií]h[oò]u/時候/g'
		catch
	endtry
	try
		silent exe '%s/sh[ií]me/甚麼/g'
		catch
	endtry
	try
		silent exe '%s/shi身/失身/g'
		catch
	endtry
	try
		silent exe '%s/sh[ūu]j[ìi]/書記/g'
		catch
	endtry
	try
		silent exe '%s/shu女/熟女/g'
		catch
	endtry
	try
		silent exe '%s/上chuang/上床/g'
		catch
	endtry
	try
		silent exe '%s/呻y[íi]n/呻吟/g'
		catch
	endtry
	try
		silent exe '%s/sh[ēe]ngzh[íi]/生殖/g'
		catch
	endtry
	try
		silent exe '%s/深gu/深谷/g'
		catch
	endtry
	try
		silent exe '%s/雙xiu/雙修/g'
		catch
	endtry
	try
		silent exe '%s/生r[ìi]/生日/g'
		catch
	endtry
	try
		silent exe '%s/t[uū]r[áa]n/突然/g'
		catch
	endtry
	try
		silent exe '%s/tiaojiao/調教/g'
		catch
	endtry
	try
		silent exe '%s/推dao/推倒/g'
		catch
	endtry
	try
		silent exe '%s/脫guang/脫光/g'
		catch
	endtry
	try
		silent exe '%s/t[èe]bi[ée]/特別/g'
		catch
	endtry
	try
		silent exe '%s/t[ōo]nggu[òo]/通過/g'
		catch
	endtry
	try
		silent exe '%s/tian來tian去/舔來舔去/g'
		catch
	endtry
	try
		silent exe '%s/w[ēe]ixi[ée]/威脅/g'
		catch
	endtry
	try
		silent exe '%s/wèizh[ìi]/位置/g'
		catch
	endtry
	try
		silent exe '%s/wei員/委員/g'
		catch
	endtry
	try
		silent exe '%s/xiu長/修長/g'
		catch
	endtry
	try
		silent exe '%s/褻du/褻瀆/g'
		catch
	endtry
	try
		silent exe '%s/xing福/幸福/g'
		catch
	endtry
	try
		silent exe '%s/小bo/小波/g'
		catch
	endtry
	try
		silent exe '%s/xiong\([^a-z]\)/胸$1/g'
		catch
	endtry
	try
		silent exe '%s/y[iī]y[àa]ng/一樣/g'
		catch
	endtry
	try
		silent exe '%s/y[īi]di[ǎa]n/一點/g'
		catch
	endtry
	try
		silent exe '%s/y[ǐi]j[īi]ng/已經/g'
		catch
	endtry
	try
		silent exe '%s/疑huo/疑惑/g'
		catch
	endtry
	try
		silent exe '%s/陽w[ěe]i/陽痿/g'
		catch
	endtry
	try
		silent exe '%s/yao頭/搖頭/g'
		catch
	endtry
	try
		silent exe '%s/yaotou/搖頭/g'
		catch
	endtry
	try
		silent exe '%s/搖tou/搖頭/g'
		catch
	endtry
	try
		silent exe '%s/yezhan/野戰/g'
		catch
	endtry
	try
		silent exe '%s/you餌/誘餌/g'
		catch
	endtry
	try
		silent exe '%s/you惑/誘惑/g'
		catch
	endtry
	try
		silent exe '%s/you導/誘導/g'
		catch
	endtry
	try
		silent exe '%s/引you/引誘/g'
		catch
	endtry
	try
		silent exe '%s/you人/誘人/g'
		catch
	endtry
	try
		silent exe '%s/旖ni/旖旎/g'
		catch
	endtry
	try
		silent exe '%s/yu念/欲念/g'
		catch
	endtry
	try
		silent exe '%s/you敵深入/誘敵深入/g'
		catch
	endtry
	try
		silent exe '%s/z[iì]j[iǐ]/自己/g'
		catch
	endtry
	try
		silent exe '%s/z[ìi][?:\\s|<br/?>]*y[oó]u/自由/g'
		catch
	endtry
	try
		silent exe '%s/zh[iī]d?[àa]u?o/知道/g'
		catch
	endtry
	try
		silent exe '%s/zha藥/炸藥/g'
		catch
	endtry
	try
		silent exe '%s/zhan有/佔有/g'
		catch
	endtry
	try
		silent exe '%s/政f[ǔu]/政府/g'
		catch
	endtry
	try
		silent exe '%s/zh[èe]ng\s\{0,2\}f[uǔ]/政府/g'
		catch
	endtry
	try
		silent exe '%s/zong理/總理/g'
		catch
	endtry
	try
		silent exe '%s/zh[ōo]ngy[āa]ng/中央/g'
		catch
	endtry
	try
		silent exe '%s/中\s*yang/中央/g'
		catch
	endtry
	try
		silent exe '%s/zu[oǒ]y[oò]u/左右/g'
		catch
	endtry
	try
		silent exe '%s/zh[oō]uw[ée]i/周圍/g'
		catch
	endtry
	try
		silent exe '%s/中nan海/中南海/g'
		catch
	endtry
	try
		silent exe '%s/中j委/中紀委/g'
		catch
	endtry
	try
		silent exe '%s/中zu部/中組部/g'
		catch
	endtry
	try
		silent exe '%s/政zhi局/政治局/g'
		catch
	endtry
	try
		silent exe '%s/\(昨|一|時|余\)[?:<br/?>|&nbsp;|\\s]*ì/$1日/g'
		catch
	endtry

	try
		silent exe "%s/[wW]\{3\}.//g"
		catch
	endtry
	try
		silent exe "%s/&amp;/＆/g"
		catch
	endtry
	try
		silent exe "%s/&#38;/＆/g"
		catch
	endtry
	try
		silent exe "%s/&lt;/＜/g"
		catch
	endtry
	try
		silent exe "%s/&#60;/＜/g"
		catch
	endtry
	try
		silent exe "%s/&gt;/＞/g"
		catch
	endtry
	try
		silent exe "%s/&#62;/＞/g"
		catch
	endtry
	try
		silent exe "%s/&#o39;/\'/g"
		catch
	endtry
	try
		silent exe "%s/&#039;/\'/g"
		catch
	endtry
	try
		silent exe "%s/<BR>/\r/"
		silent exe "%s/<\/font>//"
		catch
	endtry
	try
		silent exe ':let i=1|g/^/s//\=i."{"/|let i+=1'
		catch
	endtry
"單字替換
	echo "單字替換"
	try
		silent exe '%s/b[āà]ng/棒/g'
		catch
	endtry
	try
		silent exe '%s/bào/爆/g'
		catch
	endtry
	try
		silent exe '%s/b[àa]/吧/g'
		catch
	endtry
	try
		silent exe '%s/bī/逼/g'
		catch
	endtry
	try
		silent exe '%s/bō/波/g'
		catch
	endtry
	try
		silent exe '%s/cāo/操/g'
		catch
	endtry
	try
		silent exe '%s/cǎo/草/g'
		catch
	endtry
	try
		silent exe '%s/cào/操/g'
		catch
	endtry
	try
		silent exe '%s/chāng/娼/g'
		catch
	endtry
	try
		silent exe '%s/chang/娼/g'
		catch
	endtry
	try
		silent exe '%s/cháo/潮/g'
		catch
	endtry
	try
		silent exe '%s/chā/插/g'
		catch
	endtry
	try
		silent exe '%s/chéng/成/g'
		catch
	endtry
	try
		silent exe '%s/chōu/抽/g'
		catch
	endtry
	try
		silent exe '%s/chuáng/床/g'
		catch
	endtry
	try
		silent exe '%s/chún/唇/g'
		catch
	endtry
	try
		silent exe '%s/ch[ūu]n/春/g'
		catch
	endtry
	try
		silent exe '%s/cuō/搓/g'
		catch
	endtry
	try
		silent exe '%s/cū/粗/g'
		catch
	endtry
	try
		silent exe '%s/dǎng/黨/g'
		catch
	endtry
	try
		silent exe '%s/dàng/蕩/g'
		catch
	endtry
	try
		silent exe '%s/dāo/刀/g'
		catch
	endtry
	try
		silent exe '%s/dòng/洞/g'
		catch
	endtry
	try
		silent exe '%s/diao/屌/g'
		catch
	endtry
	try
		silent exe '%s/fǎ/法/g'
		catch
	endtry
	try
		silent exe '%s/féi/肥/g'
		catch
	endtry
	try
		silent exe '%s/fù/婦/g'
		catch
	endtry
	try
		silent exe '%s/guān/官/g'
		catch
	endtry
	try
		silent exe '%s/hán/含/g'
		catch
	endtry
	try
		silent exe '%s/hóu/喉/g'
		catch
	endtry
	try
		silent exe '%s/hòu/厚/g'
		catch
	endtry
	try
		silent exe '%s/huā/花/g'
		catch
	endtry
	try
		silent exe '%s/huá/华/g'
		catch
	endtry
	try
		silent exe '%s/huò/惑/g'
		catch
	endtry
	try
		silent exe '%s/hùn/混/g'
		catch
	endtry
	try
		silent exe '%s/hún/魂/g'
		catch
	endtry
	try
		silent exe '%s/jiǔ/九/g'
		catch
	endtry
	try
		silent exe '%s/j[īi]ng/精/g'
		catch
	endtry
	try
		silent exe '%s/jìn/禁/g'
		catch
	endtry
	try
		silent exe '%s/jǐng/警/g'
		catch
	endtry
	try
		silent exe '%s/jiāng/江/g'
		catch
	endtry
	try
		silent exe '%s/jiān/奸/g'
		catch
	endtry
	try
		silent exe '%s/jiāo/交/g'
		catch
	endtry
	try
		silent exe '%s/jūn/軍/g'
		catch
	endtry
	try
		silent exe '%s/jū/拘/g'
		catch
	endtry
	try
		silent exe '%s/jú/局/g'
		catch
	endtry
	try
		silent exe '%s/jī/激/g'
		catch
	endtry
	try
		silent exe '%s/激ān/奸/g'
		catch
	endtry
	try
		silent exe '%s/kù/褲/g'
		catch
	endtry
	try
		silent exe '%s/k[àa]n/看/g'
		catch
	endtry
	try
		silent exe '%s/[1l]àng/浪/g'
		catch
	endtry
	try
		silent exe '%s/liáo/撩/g'
		catch
	endtry
	try
		silent exe '%s/liú/流/g'
		catch
	endtry
	try
		silent exe '%s/lì/莉/g'
		catch
	endtry
	try
		silent exe '%s/liè/烈/g'
		catch
	endtry
	try
		silent exe '%s/[1l]uàn/亂/g'
		catch
	endtry
	try
		silent exe '%s/lún/倫/g'
		catch
	endtry
	try
		silent exe '%s/luǒ/裸/g'
		catch
	endtry
	try
		silent exe '%s/lòu/露/g'
		catch
	endtry
	try
		silent exe '%s/[l1]ù/露/g'
		catch
	endtry
	try
		silent exe '%s/lǜ/綠/g'
		catch
	endtry
	try
		silent exe '%s/mǎi/買/g'
		catch
	endtry
	try
		silent exe '%s/mài/賣/g'
		catch
	endtry
	try
		silent exe '%s/máo/毛/g'
		catch
	endtry
	try
		silent exe '%s/mā/媽/g'
		catch
	endtry
	try
		silent exe '%s/méng/蒙/g'
		catch
	endtry
	try
		silent exe '%s/mén/門/g'
		catch
	endtry
	try
		silent exe '%s/miè/滅/g'
		catch
	endtry
	try
		silent exe '%s/mí/迷/g'
		catch
	endtry
	try
		silent exe '%s/mì/蜜/g'
		catch
	endtry
	try
		silent exe '%s/mō/摸/g'
		catch
	endtry
	try
		silent exe '%s/nǎi/奶/g'
		catch
	endtry
	try
		silent exe '%s/nèn/嫩/g'
		catch
	endtry
	try
		silent exe '%s/niào/尿/g'
		catch
	endtry
	try
		silent exe '%s/niē/捏/g'
		catch
	endtry
	try
		silent exe '%s/nòng/弄/g'
		catch
	endtry
	try
		silent exe '%s/\([^A-z]\)nv\([^A-z]\)/\1女\2/g'
		catch
	endtry
	try
		silent exe '%s/nǚ/女/g'
		catch
	endtry
	try
		silent exe '%s/pào/炮/g'
		catch
	endtry
	try
		silent exe '%s/piàn/片/g'
		catch
	endtry
	try
		silent exe '%s/qiāng/槍/g'
		catch
	endtry
	try
		silent exe '%s/qíng/情/g'
		catch
	endtry
	try
		silent exe '%s/qīn/親/g'
		catch
	endtry
	try
		silent exe '%s/qiú/求/g'
		catch
	endtry
	try
		silent exe '%s/quán/全/g'
		catch
	endtry
	try
		silent exe '%s/rén/人/g'
		catch
	endtry
	try
		silent exe '%s/rì/日/g'
		catch
	endtry
	try
		silent exe '%s/\([^a-z]\)ri/$1日/g'
		catch
	endtry
	try
		silent exe '%s/<\/p>\n<p>\s*ì/日/g'
		catch
	endtry
	try
		silent exe '%s/rǔ/乳/g'
		catch
	endtry
	try
		silent exe '%s/sāo/騷/g'
		catch
	endtry
	try
		silent exe '%s/sǎo/騷/g'
		catch
	endtry
	try
		silent exe '%s/sè/色/g'
		catch
	endtry
	try
		silent exe '%s/\([^a-z]\)se/$1色/g'
		catch
	endtry
	try
		silent exe '%s/shā/殺/g'
		catch
	endtry
	try
		silent exe '%s/shēn/呻/g'
		catch
	endtry
	try
		silent exe '%s/shén/神/g'
		catch
	endtry
	try
		silent exe '%s/shè/射/g'
		catch
	endtry
	try
		silent exe '%s/shǐ/屎/g'
		catch
	endtry
	try
		silent exe '%s/shì/侍/g'
		catch
	endtry
	try
		silent exe '%s/sǐ/死/g'
		catch
	endtry
	try
		silent exe '%s/sī/私/g'
		catch
	endtry
	try
		silent exe '%s/shǔn/吮/g'
		catch
	endtry
	try
		silent exe '%s/sǔn/吮/g'
		catch
	endtry
	try
		silent exe '%s/sū/酥/g'
		catch
	endtry
	try
		silent exe '%s/tān/貪/g'
		catch
	endtry
	try
		silent exe '%s/tiǎn/舔/g'
		catch
	endtry
	try
		silent exe '%s/tǐng/挺/g'
		catch
	endtry
	try
		silent exe '%s/tǐ/體/g'
		catch
	endtry
	try
		silent exe '%s/tǒng/捅/g'
		catch
	endtry
	try
		silent exe '%s/tōu/偷/g'
		catch
	endtry
	try
		silent exe '%s/tou/偷/g'
		catch
	endtry
	try
		silent exe '%s/tuǐ/腿/g'
		catch
	endtry
	try
		silent exe '%s/tūn/吞/g'
		catch
	endtry
	try
		silent exe '%s/tún/臀/g'
		catch
	endtry
	try
		silent exe '%s/wēn/溫/g'
		catch
	endtry
	try
		silent exe '%s/wěn/吻/g'
		catch
	endtry
	try
		silent exe '%s/xiǎo/小/g'
		catch
	endtry
	try
		silent exe '%s/x[ìi]ng/性/g'
		catch
	endtry
	try
		silent exe '%s/xiōng/胸/g'
		catch
	endtry
	try
		silent exe '%s/xī/吸/g'
		catch
	endtry
	try
		silent exe '%s/xí/习/g'
		catch
	endtry
	try
		silent exe '%s/xué/穴/g'
		catch
	endtry
	try
		silent exe '%s/xuè/穴/g'
		catch
	endtry
	try
		silent exe '%s/xùe/穴/g'
		catch
	endtry
	try
		silent exe '%s/xuan/宣/g'
		catch
	endtry
	try
		silent exe '%s/yāng/央/g'
		catch
	endtry
	try
		silent exe '%s/yàn/艷/g'
		catch
	endtry
	try
		silent exe '%s/y[īi]n/陰/g'
		catch
	endtry
	try
		silent exe '%s/yào/藥/g'
		catch
	endtry
	try
		silent exe '%s/yé/爺/g'
		catch
	endtry
	try
		silent exe '%s/yòu/誘/g'
		catch
	endtry
	try
		silent exe '%s/zàng/髒/g'
		catch
	endtry
	try
		silent exe '%s/\([^a-z]\)y[uù]/$1欲/g'
		catch
	endtry
	try
		silent exe '%s/yín/淫/g'
		catch
	endtry
	try
		silent exe '%s/zhēn/針/g'
		catch
	endtry
	try
		silent exe '%s/zēn/針/g'
		catch
	endtry
	try
		silent exe '%s/zhà/炸/g'
		catch
	endtry
	try
		silent exe '%s/zhèng/政/g'
		catch
	endtry
	try
		silent exe '%s/zǒu/走/g'
		catch
	endtry
	try
		silent exe '%s/zuì/罪/g'
		catch
	endtry
	try
		silent exe '%s/zuò/做/g'
		catch
	endtry
	try
		silent exe '%s/zhong/中/g'
		catch
	endtry
"誤替還原
	echo "誤替還原"
	try
		silent exe '%s/碧欲/碧玉/g'
		catch
	endtry
	try
		silent exe '%s/美欲/美玉/g'
		catch
	endtry
	try
		silent exe '%s/欲石/玉石/g'
		catch
	endtry
	try
		silent exe '%s/惜欲/惜玉/g'
		catch
	endtry
	try
		silent exe '%s/寶欲/寶玉/g'
		catch
	endtry
	try
		silent exe '%s/品性/品行/g'
		catch
	endtry
	try
		silent exe '%s/德性/德行/g'
		catch
	endtry
	try
		silent exe '%s/波ok/book/g'
		catch
	endtry
	try
		silent exe '%s/波SS/BOSS/g'
		catch
	endtry
"其他修正
	echo "其他修正"
	try
		silent exe '%s/n吧/nba/g'
		catch
	endtry
	try
		silent exe '%s/彌倆/你倆/g'
		catch
	endtry
	try
		silent exe '%s/伱/你/g'
		catch
	endtry
"特殊關鍵字
	echo "特殊關鍵字"
	try
		silent exe 's/，到網址//g'
		catch
	endtry
	try
		silent exe "%s/(本章免費)//g"
		catch
	endtry
	try
		silent exe '%s/(頂點小說手打小說)//g'
		catch
	endtry
	try
		silent exe 's/(奇書網-Www.Qisuu.Com)//g'
		catch
	endtry
"
	try
		silent exe 'g/txt全*集*下載網址：http:.*html$/d'
		catch
	endtry
	try
		silent exe '%s/免責聲明//g'
		catch
	endtry
	try
		silent exe '%s/☆☆☆正文[開結][始束]\[80txt\.com\]☆☆☆//g'
		catch
	endtry
	try
		silent exe 'g/註：如果你發現本書未完屬於連載更新請到/d'
		catch
	endtry
	try
		silent exe 'g/聲明:本書由奇書網(www.Qisuu.com)自網絡/d'
		catch
	endtry
	try
		silent exe 'g/申明:本書由奇書網(www.Qisuu.com)自網絡/d'
		catch
	endtry
	try
		silent exe 'g/1.八零電子書免費為書友提供/d'
		catch
	endtry
	try
		silent exe 'g/2.八零電子書所有txt小說均來自書友收集整理自網絡/d'
		catch
	endtry
	try
		silent exe 'g/A:如果你發現本書尚未完結或者連載中，請到www.80txt.com/d'
		catch
	endtry
	try
		silent exe 'g/B:【更多精彩好書，更多原創TXT手機電子書，.*】$/d'
		catch
	endtry
	try
		silent exe 'g/C:本書由八零電子書/d'
		catch
	endtry
	try
		silent exe 'g/更新時間:/d'
		catch
	endtry
	try
		silent exe 'g/^更新時間/d'
		catch
	endtry
	try
		silent exe 'g/^更多精彩，/d'
		catch
	endtry
	try
		silent exe 'sort /^\d\{-}{/'
		catch
	endtry
"移除重複章節名稱
	echo "移除重複章節名稱"
	silent exe 'g/\%(^\d\{-}{第\1$\n\)\@<=\d\{-}{第\(.*\)$/d'
	silent exe "sort n"
	silent exe '%s/\d\{-}{//'
"收尾
	echo "收尾"
	try
		silent exe "%s/[(\[【][\])】]//g"
		catch
	endtry
	try
		silent exe "%s/^M//g"
		catch
	endtry
	try
		silent exe "%s/^[ \t]*//"
		catch
	endtry
	try
		silent exe "%s/[ \t]*$//"
		catch
	endtry

	try
		silent exe "g/^[ \t]*$/d"
		catch
	endtry
	try
		silent exe "g/^$/d"
		catch
	endtry
	normal gg
	silent exe "w"
	silent exe "redraw!"
endfun
