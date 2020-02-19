set number
set tabstop=8
set incsearch
set hlsearch
set cursorline
set shell=/bin/sh
set smartindent
set encoding=utf-8
au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal g'\"" | endif

if has("termguicolors")
  " enable true color
  set termguicolors
endif

filetype off  " required!
set nocompatible
filetype plugin indent on     " required!
set fencs=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936
