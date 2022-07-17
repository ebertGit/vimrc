" 不与 Vi 兼容（采用 Vim 自己的操作命令）
set nocompatible

set number
" 显示光标所在的当前行的行号，其他行都为相对于该行的相对行号
set relativenumber
set cursorline

"是否显示状态栏。0 表示不显示，1 表示只在多窗口时显示，2 表示显示
set laststatus=2
" 在状态栏显示光标的当前位置（位于哪一行哪一列）
set ruler

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

nnoremap <leader>h ^
nnoremap <leader>l $

vnoremap <leader>h ^
vnoremap <leader>l $

inoremap jj <esc>

