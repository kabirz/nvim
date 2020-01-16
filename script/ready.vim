colorscheme dracula
set rtp+=~/.fzf
let g:rainbow_active = 1
set autochdir

au vimEnter *  Defx
wincmd w
autocmd VimEnter * wincmd w
autocmd bufenter * if (winnr("$") == 1 && exists("b:defx")) | q | endif

