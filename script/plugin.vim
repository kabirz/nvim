set pastetoggle=<F2>    
set pyxversion=3    
let g:python3_host_prog="/usr/bin/python3"

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
    Plug 'ryanoasis/vim-devicons'
    Plug 'dracula/vim', { 'as': 'dracula' }
call plug#end()
