local set = vim.o

set.number = true
set.expandtab = true
set.shiftwidth = 2
set.tabstop = 2
set.softtabstop = 2
set.incsearch = true
set.hlsearch = true
set.cursorline = true
set.smartindent = true
set.encoding = 'utf-8'
set.mouse = 'a'
set.fencs = 'utf-8,ucs-bom,gb18030,gbk,gb2312,cp936'
set.shell = '/usr/bin/zsh'
vim.g.mapleader = " "

-- auto command
set.autochdir = true
set.autowriteall = true

-- fold
set.foldmethod = 'syntax'
set.foldlevelstart = 99

vim.cmd('filetype off')
set.compatible = false
vim.cmd('filetype plugin indent on')


vim.cmd([[
  au FileType c,cpp          setlocal sw=8 sts=8 ts=8 noet cc=98
  au FileType rust           setlocal sw=4 sts=4 ts=4 et cc=98
  au filetype python         setlocal sw=4 sts=4 ts=4 et cc=80
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal g'\"" | endif
]])

require('plugins.mappings').load_mappings('common')
