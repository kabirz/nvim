set number
set tabstop=8
set incsearch
set hlsearch
set cursorline
set shell=/bin/sh
set nosmartindent
" set paste
set pastetoggle=<F2>

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
    Plug 'jiangmiao/auto-pairs'
    Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
    Plug 'junegunn/fzf.vim'
    Plug 'francoiscabrol/ranger.vim'
    Plug 'liuchengxu/vista.vim'
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'tmhedberg/SimpylFold', { 'for' :['python', 'vim-plug'] }
    Plug 'Vimjas/vim-python-pep8-indent', { 'for' :['python', 'vim-plug'] }
    Plug 'numirias/semshi', { 'do': ':UpdateRemotePlugins', 'for' :['python', 'vim-plug'] }
    Plug 'tweekmonster/braceless.vim'
    " Plug 'Valloric/YouCompleteMe'
    Plug 'preservim/nerdtree'
    
call plug#end()

let g:airline_powerline_fonts=1
let g:airline_theme="simple"
set rtp+=~/.fzf
noremap <C-p> :FZF<CR>
noremap <C-f> :Ag<CR>
map <leader>f :Ranger<CR>
map <F3> :NERDTreeToggle<CR>
let NERDTreeShowFiles=1
let NERDTreeIgnore=['\.pyc','\~$','\.swp', '\.o.cmd', '\.o']
autocmd vimenter * NERDTree
wincmd w
autocmd VimEnter * wincmd w
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l



" ===
" === Vista.vim
" ===
" noremap <silent> T :Vista!!<CR>
map <F6> :Vista!!<CR>
let g:vista_icon_indent = ["╰─▸ ", "├─▸ "]
let g:vista_default_executive = 'ctags'
let g:vista_fzf_preview = ['right:50%']
let g:vista#renderer#enable_icon = 1
let g:vista#renderer#icons = {
\   "function": "\uf794",
\   "variable": "\uf71b",
\  }
function! NearestMethodOrFunction() abort
	return get(b:, 'vista_nearest_method_or_function', '')
endfunction
set statusline+=%{NearestMethodOrFunction()}
autocmd VimEnter * call vista#RunForNearestMethodOrFunction()

