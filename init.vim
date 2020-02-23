"  __  __        __     ___
" |  \/  |_   _  \ \   / (_)_ __ ___  _ __ ___
" | |\/| | | | |  \ \ / /| | '_ ` _ \| '__/ __|
" | |  | | |_| |   \ V / | | | | | | | | | (__
" |_|  |_|\__, |    \_/  |_|_| |_| |_|_|  \___|
"         |___/
set number
set tabstop=8
set incsearch
set hlsearch
set cursorline
set shell=/bin/sh
set smartindent
set encoding=utf-8
au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal g'\"" | endif
if exists('g:vscode')
	finish
endif
if has("termguicolors")
  " enable true color
  set termguicolors
endif

filetype off  " required!
set nocompatible
filetype plugin indent on     " required!
set fencs=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936

set pyxversion=3
let g:python3_host_prog="/usr/bin/python3"

" dein config

let s:dein_dir = expand('~/.cache/dein')
let s:dein_repo_dir = s:dein_dir . '/repos/github.com/Shougo/dein.vim'

if &runtimepath !~# '/dein.vim'
    if !isdirectory(s:dein_repo_dir)
        execute '!git clone https://github.com/Shougo/dein.vim' s:dein_repo_dir
    endif
    execute 'set runtimepath^=' . s:dein_repo_dir
endif

let g:vimrc_dir = fnamemodify(resolve(expand('<sfile>:p')), ':h')
if dein#load_state(s:dein_dir)
    call dein#begin(s:dein_dir)
    call dein#load_toml(g:vimrc_dir.  '/rc/dein.toml', {'lazy': 0})
    call dein#load_toml(g:vimrc_dir.  '/rc/dein-lazy.toml', {'lazy': 1})
    call dein#end()
    call dein#save_state()
endif

if dein#check_install()
    call dein#install()
endif

" window
nnoremap <space>h <C-w>h
nnoremap <space>j <C-w>j
nnoremap <space>k <C-w>k
nnoremap <space>l <C-w>l
nnoremap <space>o <C-o>
nnoremap <space>i <C-i>
nnoremap <silent><leader>ev :tabe $MYVIMRC<CR>
nnoremap <silent><leader>sv :source $MYVIMRC<CR>

" set paste
set pastetoggle=<space>p
" close vim
noremap <silent><space>c :qa <CR>
set autochdir
