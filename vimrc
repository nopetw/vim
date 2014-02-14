"日 12 30 22:58:20 CST 2012
"編碼
set encoding=utf-8
set fileencodings=utf-8,big5,gb2312,utf-16le
set ffs=unix,dos

"一般設定
set autoindent		"自動縮排
set smartindent		"自動處理縮排
set smarttab		"對應expandtab
set shiftwidth=4	"縮排寬度
set tabstop=4		"<TAB>字元數
set history=500		"歷史記錄最高500行
set bs=2			"INSERT中，可過行刪除
set nu				"左側顯示行數
set incsearch		"快速顯示搜尋字串
syntax on			"語法上色
filetype plugin on	"enable plugin
	
	"copy to clipboard in visul mode
	"http://vim.wikia.com/wiki/In_line_copy_and_paste_to_system_clipboard
vmap <C-c> y:call system("pbcopy", getreg("\""))<CR>
nmap <C-v> :call setreg("\"",system("pbpaste"))<CR>p
	"disable
"set expandtab		"把<TAB>變成空白鍵

"配色＆statusline
set t_Co=256		"term顏色指定
set ruler			"顯示遊標位置
set showmode		"顯示模式
set showcmd			"顯示指令
set laststatus=2	"statuline高度
	"nu列背景色＆色彩
hi LineNr          ctermfg=250 ctermbg=234

	"statusline設定 作者pct
	"https://groups.google.com/forum/?fromgroups=#!topic/vim-taiwan/NZ2RBYF6fB0
"set laststatus=2
set statusline=%4*%<\ %1*[%F]
set statusline+=%4*\ %5*[%{&encoding}, " encoding
set statusline+=%{&fileformat}%{\"\".((exists(\"+bomb\")\ &&\ &bomb)?\",BOM\":\"\").\"\"}]%m
set statusline+=%4*%=\ %6*%y%4*\ %3*%l%4*,\ %3*%c%4*\ \<\ %2*%P%4*\ \>
highlight User1 ctermfg=red
highlight User2 term=underline cterm=underline ctermfg=green
highlight User3 term=underline cterm=underline ctermfg=yellow
highlight User4 term=underline cterm=underline ctermfg=white
highlight User5 ctermfg=cyan
highlight User6 ctermfg=white

	"eregex.vim
"nnoremap / :M/
"nnoremap ? :M?
nnoremap ,/ /
nnoremap ,? ?

"mac＆其他設定
let Tlist_Ctags_Cmd='/usr/local/bin/ctags' 
	"解決mac's terminal.app無法正確使用滑鼠的問題
	"搭配 mouseterm
	"https://bitheap.org/mouseterm/
if has("mouse")
	set mouse=a
endif

	"epub and vim
au BufReadCmd   *.epub      call zip#Browse(expand("<amatch>"))
	" MS Word document reading
au BufReadPre *.doc set ro
au BufReadPre *.doc set hlsearch!
au BufReadPost *.doc %!antiword "%"
	"auto reload vimrc when editing it
autocmd! bufwritepost .vimrc source ~/.vimrc
autocmd! bufwritepost vimrc source ~/.vimrc
	"回到上次編輯的位置
if has("autocmd")
	autocmd BufRead *.txt set tw=78
	autocmd BufReadPost *
	\ if line("'\"") > 0 && line ("'\"") <= line("$") |
	\   exe "normal g'\"" |
	\ endif
endif
	"tab
map <C-t><C-t> :tabnew<CR>
map <C-t><C-w> :tabclose<CR> 
	"ctags with tagbar
nmap <F8> :TagbarToggle<CR>


	"Vundle
set nocompatible
filetype off
let iCanHazVundle=1
let vundle_readme=expand('~/.vim/bundle/vundle/README.md')
if !filereadable(vundle_readme)
  echo "Installing Vundle.."
  echo ""
  silent !mkdir -p ~/.vim/bundle
  silent !git clone https://github.com/gmarik/vundle ~/.vim/bundle/vundle
  let iCanHazVundle=0
endif
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
	"Bundle List
Bundle 'FencView.vim'
Bundle 'bash-support.vim'
Bundle 'taglist.vim'
Bundle 'Lokaltog/vim-powerline'
Bundle 'gmarik/vundle'
Bundle 'majutsushi/tagbar'
Bundle 'othree/eregex.vim'

filetype plugin indent on
