"##################################
"# Vim起動時に、判別の優先度を定める設定
"##################################

" ファイルを読み込む時の、文字コード自動判別の順番
" 利用可能なエンコード名称は、:help encoding-valuesで確認
:set fileencodings=utf-8,cp932,euc-jp,sjis,cp936,euc-cn,cp950,big5,euc-tw

" 不与 Vi 兼容（采用 Vim 自己的操作命令）
set nocompatible

set number
" 显示光标所在的当前行的行号，其他行都为相对于该行的相对行号
set relativenumber
set cursorline

" 是否显示状态栏。0 表示不显示，1 表示只在多窗口时显示，2 表示显示(默认只显示文件名)
set laststatus=2

" 在状态栏显示光标的当前位置（位于哪一行哪一列）
"set ruler

" ステータスラインに表示する内容を設定する
set statusline=%F%m%h%w\ %<[ENC=%{&fenc!=''?&fenc:&enc}]\ [FMT=%{&ff}]\ [TYPE=%Y]\ %=[CODE=0x%02B]\ [POS=%l/%L(%02v)]
" 各項目の意味合い（:help statuslineで確認）：
" %f - Path to the file in the buffer, as typed or relative to current directory.
" %t - File name (tail) of file in the buffer.
" %F – ファイルのフルパス。
" %m – 編集されているなら [+]。リードオンリーなら [-]。
" %h – Help buffer なら [HELP] と表示。
" %w – Preview window なら [PREVIEW] と表示。
" %< – ウィンドウの横幅が縮まってもここまでは表示することを保証。
" %{&fenc!=''?&fecn:&enc} – fileencoding が設定されていればその値、設定されていなければ encoding を表示。
" %{&ff} – fileformat の値を表示。%{&fileformat} の省略形。(dos, unix, mac)
" %Y – filetype の値を表示。通常はこれに対応する syntax file が読み込まれているはず。
" %02B – カーソル位置の文字コードを16進数で表示。
" %l – カーソル位置の行番号。
" %L – ファイルの行数。
" %02v – カーソル位置の桁番号。

" 垂直滚动时，光标距离顶部/底部的位置（单位：行）
set scrolloff=5
set showmode

" highlight matching [{()}]
set showmatch

" 打开语法高亮
syntax on

" 支持使用鼠标
set mouse=a

" クリップボード連携(コピー&ペースト)
" クリップボードが有効なvimバージョンを事前に確認：$ vim --version | grep clipboard 
set clipboard+=unnamed

" 搜索时，高亮显示匹配结果
set hlsearch
" 输入搜索模式时，每输入一个字符，就自动跳到第一个匹配的结果
set incsearch

" 命令模式下，底部操作指令按下 Tab 键自动补全。第一次按下 Tab，会显示所有匹配的操作指令的清单；第二次按下 Tab，会依次选择各个指令
set wildmenu
set wildmode=longest:list,full

let mapleader="\<space>"

" 移动到行首行尾
nnoremap <leader>h ^
nnoremap <leader>l $
vnoremap <leader>h ^
vnoremap <leader>l $h

" 退出插入模式
inoremap jj <esc>

" 缩进
nmap <tab> V>
nmap <s-tab> V<
vmap <tab> >gv
vmap <s-tab> <gv

" 保存
nnoremap <leader>s :w<CR>
" 退出
nnoremap <leader>q :q<CR>
