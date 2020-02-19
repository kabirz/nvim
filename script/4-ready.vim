colorscheme dracula
let g:rainbow_active = 1
set autochdir

" autocmd VimEnter * CocCommand explorer
command! -bang -nargs=* MRU call fzf#vim#history(fzf#vim#with_preview())

