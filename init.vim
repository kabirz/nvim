set number
set tabstop=8
set incsearch
set hlsearch
set cursorline
set shell=/bin/sh
set smartindent
" set paste
set pastetoggle=<F2>
set pyxversion=3
let g:python3_host_prog="/usr/bin/python3"
set encoding=utf-8

au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal g'\"" | endif

" ===
" === Auto load for first time uses
" ===
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
    Plug 'fatih/vim-go', { 'tag': '*' }
    Plug 'rust-lang/rust.vim'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'junegunn/vim-easy-align'
    Plug 'mattn/emmet-vim'
    Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
    Plug 'junegunn/fzf.vim'
    Plug 'francoiscabrol/ranger.vim'
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'tmhedberg/SimpylFold', { 'for' :['python', 'vim-plug'] }
    Plug 'Vimjas/vim-python-pep8-indent', { 'for' :['python', 'vim-plug'] }
    Plug 'numirias/semshi', { 'do': ':UpdateRemotePlugins', 'for' :['python', 'vim-plug'] }
    Plug 'tweekmonster/braceless.vim'
    Plug 'Yggdroot/LeaderF', { 'do': './install.sh' }
    Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' }
    Plug 'kristijanhusak/defx-icons'
    Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
    Plug 'zchee/deoplete-jedi'
    Plug 'Shougo/deoplete-clangx'
    Plug 'Shougo/neoinclude.vim'
    Plug 'sebastianmarkow/deoplete-rust'
call plug#end()

let g:deoplete#sources#rust#racer_binary='~/.cargo/bin/racer'
let g:deoplete#sources#rust#show_duplicates=1
let g:airline_powerline_fonts=1
let g:airline_theme="simple"
let g:deoplete#enable_at_startup=1
set rtp+=~/.fzf
noremap <C-p> :FZF<CR>
noremap <C-f> :Ag<CR>
map <leader>f :Ranger<CR>
map <F3> :Defx<CR>

call defx#custom#option('_', {
      \ 'winwidth': 30,
      \ 'split': 'vertical',
      \ 'direction': 'topleft',
      \ 'show_ignored_files': 0,
      \ 'buffer_name': '',
      \ 'toggle': 1,
      \ 'resume': 1
      \ })

