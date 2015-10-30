" 2014年11月10日 周一 18時16分52秒 CST
" 樣式
:colorscheme ir_black
" :colorscheme railscasts
" 編碼
set encoding=utf-8
set fileencodings=utf-8,big5,gb2312
set ffs=unix,dos

" 一般設定
" set autoindent		"自動縮排
" set smartindent		"自動處理縮排
set smarttab		"對應expandtab
set shiftwidth=4	"縮排寬度
set tabstop=4		"<TAB>字元數
set history=5000	"歷史記錄最高5000行
set bs=2			"INSERT中，可過行刪除
" set nu				"左側顯示行數
set incsearch		"快速顯示搜尋字串
syntax on			"語法上色
filetype plugin on	"enable plugin

" copy to clipboard in visul mode
" http://vim.wikia.com/wiki/In_line_copy_and_paste_to_system_clipboard
vmap <C-c> y:call system("pbcopy", getreg("\""))<CR>
nmap <C-v> :call setreg("\"",system("pbpaste"))<CR>p

" 配合reattach-to-user-namespace
set clipboard=unnamed

" disable
" set expandtab		"把<TAB>變成空白鍵


" 配色＆statusline
set t_Co=256		"term顏色指定
set ruler			"顯示遊標位置
set showmode		"顯示模式
set showcmd			"顯示指令
set laststatus=2	"statuline高度
" nu列背景色＆色彩
hi LineNr          ctermfg=250 ctermbg=234
" eregex.vim
" nnoremap ,/ /
" nnoremap ,? ?

" mac＆其他設定
let Tlist_Ctags_Cmd='/usr/local/bin/ctags'
" 解決mac's terminal.app無法正確使用滑鼠的問題
" 搭配 mouseterm
" https://bitheap.org/mouseterm/
if has("mouse")
set mouse=a
endif

" epub and vim
au BufReadCmd   *.epub      call zip#Browse(expand("<amatch>"))
au BufReadCmd   *.ipa      call zip#Browse(expand("<amatch>"))
" MS Word document reading
au BufReadPre *.doc set ro
au BufReadPre *.doc set hlsearch!
au BufReadPost *.doc %!antiword "%"
" Tab鍵格數
autocmd FileType ruby,haml,eruby,yaml set ai sw=2 sts=2 et
autocmd FileType python set sw=4 sts=4 et

" auto reload vimrc when editing it
autocmd! bufwritepost .vimrc source ~/.vimrc
autocmd! bufwritepost vimrc source ~/.vimrc
" 回到上次編輯的位置
if has("autocmd")
autocmd BufRead *.txt set tw=78
autocmd BufReadPost *
\ if line("'\"") > 0 && line ("'\"") <= line("$") |
\   exe "normal g'\"" |
\ endif
endif
" tab
map <C-t><C-t> :tabnew<CR>
map <C-t><C-w> :tabclose<CR>
" ctags with tagbar
nmap <F8> :TagbarToggle<CR>

" Vundle
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
" Bundle 'Lokaltog/powerline'
" Bundle 'bling/vim-bufferline'
" Bundle 'kakkyz81/evervim'
Bundle 'FencView.vim'
Bundle 'Raimondi/delimitMate'
Bundle 'Yggdroot/indentLine'
" Bundle 'bash-support.vim'
Bundle 'bling/vim-airline'
Bundle 'darfink/vim-plist'
Bundle 'gmarik/vundle'
Bundle 'majutsushi/tagbar'
Bundle 'othree/eregex.vim'
Bundle 'ralesi/office.vim'
Bundle 'taglist.vim'
Bundle 'tmux-plugins/vim-tmux'
Bundle 'tpope/vim-commentary'
Bundle 'tpope/vim-obsession'
Bundle 'tpope/vim-surround'

" Bundle List

filetype plugin indent on
" vim-airline 設定
" https://github.com/bling/vim-airline/wiki/Screenshots
let g:airline_powerline_fonts = 1
let g:airline_theme="luna"
let g:airline_detect_whitespace=0

" evervim settings
let g:evervim_devtoken='S=s89:U=8c7ee0:E=15451385f40:C=14cf9873128:P=1cd:A=en-devtoken:V=2:H=e4a1ac7216df3d2d113684d9a6e2391c'

" vim-obsession

" indentLine
" set list listchars=tab:\│\ 
set list listchars=tab:\¦\ 
" set list listchars=tab:\┆\ 
