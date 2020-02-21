set pyxversion=3
let g:python3_host_prog="/usr/bin/python3"
let $NVIM_CFG_PATH='~/.config/nvim'

if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !git clone --depth 1  https://github.com/junegunn/vim-plug /tmp/vim-plug
  silent !mkdir -p  ~/.config/nvim/autoload
  silent !cp /tmp/vim-plug/plug.vim ~/.config/nvim/autoload/
  silent !rm -fr /tmp/vim-plug
  autocmd VimEnter * PlugInstall --sync | runtime $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
  Plug 'fatih/vim-go', { 'tag': '*' }
  Plug 'rust-lang/rust.vim'
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'junegunn/vim-easy-align'
  Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
  Plug 'junegunn/fzf.vim'
  Plug 'francoiscabrol/ranger.vim'
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'tweekmonster/braceless.vim'
  Plug 'Yggdroot/LeaderF', { 'do': './install.sh' }
  Plug 'Shougo/neoinclude.vim'
  Plug 'dracula/vim', { 'as': 'dracula' }
  Plug 'cpiger/NeoDebug'
  Plug 'sirver/ultisnips'
  Plug 'honza/vim-snippets'
  Plug 'luochen1990/rainbow'
  Plug 'sheerun/vim-polyglot'
  Plug 'huleiak47/vim-cmake-complete'
  Plug 'mhinz/vim-startify'
call plug#end()

for name in g:plugs_order
  if name == 'vim-airline-themes'
    source $NVIM_CFG_PATH/script/cfg/airline.vim
  elseif name == 'coc.nvim'
    source $NVIM_CFG_PATH/script/cfg/coc.vim
  elseif name == 'deoplete.nvim'
    source $NVIM_CFG_PATH/script/cfg/deoplete.vim
  elseif name == 'fzf.vim'
    source $NVIM_CFG_PATH/script/cfg/fzf.vim
  elseif name == 'vim-cpp-enhanced-highlight'
    source $NVIM_CFG_PATH/script/cfg/highlight.vim
  elseif name == 'LeaderF.vim'
    source $NVIM_CFG_PATH/script/cfg/leaderf.vim
  elseif name == 'vim-snippets'
    source $NVIM_CFG_PATH/script/cfg/snippets.vim
  endif
endfor
