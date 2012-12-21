"SAT 12 22 04:33:31 CST 2012
set encoding=utf-8
set fileencodings=utf-8,big5,big5-hkscs,gb2312,gb18030,utf-16
set ai			" always set autoindenting on
set history=50		" keep 50 lines of command line history
set ruler		" show the cursor position all the time
set ffs=unix,dos
set ff=unix
set incsearch
set showcmd
set showmode
set bs=2
syntax on
set smartindent
set tabstop=4
set shiftwidth=4

"set expandtab
if has("autocmd")
	autocmd BufRead *.txt set tw=78
	autocmd BufReadPost *
	\ if line("'\"") > 0 && line ("'\"") <= line("$") |
	\   exe "normal g'\"" |
	\ endif
endif

"epub and vim
au BufReadCmd   *.epub      call zip#Browse(expand("<amatch>"))

"if v:lang =~ "utf8$" || v:lang =~ "UTF-8$"
"   set fileencodings=utf-8,latin1
"endif

"ruler
set laststatus=2
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

"pathogen
runtime bundle/vim-pathogen/autoload/pathogen.vim
call pathogen#infect()

"eregex.vim
nnoremap / :M/
nnoremap ? :M?
nnoremap ,/ /
nnoremap ,? ?
