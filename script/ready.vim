colorscheme dracula
set rtp+=~/.fzf
let g:rainbow_active = 1
set autochdir

autocmd VimEnter *  Defx
wincmd w
autocmd VimEnter * wincmd w
autocmd TabLeave * if (winnr() == 1) | wincmd w | endif
autocmd BufEnter * if (winnr("$") == 1 && exists("b:defx")) | q | endif
autocmd TabNEWEntered * if(!exists("b:defx")) | Defx | endif
autocmd TabNEWEntered * wincmd w
