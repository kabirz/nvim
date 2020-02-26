" window
nnoremap <space>h <C-w>h
nnoremap <space>j <C-w>j
nnoremap <space>k <C-w>k
nnoremap <space>l <C-w>l
nnoremap <space>o <C-o>
nnoremap <space>i <C-i>
nnoremap <silent><leader>ev :tabe $MYVIMRC<CR>
nnoremap <silent><leader>sv :source $MYVIMRC<CR>
" buffer keymap
nnoremap <silent>bf :bfirst<CR>
nnoremap <silent>be :blast<CR>
nnoremap <silent>bh :bprevious<CR>
nnoremap <silent>bl :bnext<CR>
nnoremap <silent>b- :b#<CR>
nnoremap <silent>bd :bd<CR>
nnoremap <silent>bp :<C-U><C-R>=printf("chdir %s", expand('%:h'))<CR><CR>

" tab keymap
nnoremap <silent>tf :tabfirst<CR>
nnoremap <silent>te :tablast<CR>
nnoremap <silent>th :tabprevious<CR>
nnoremap <silent>tl :tabnext<CR>

" set paste
set pastetoggle=<space>p
nnoremap <silent><space><space> :set mouse=a <CR>
" close vim
noremap <silent><space>c :qa <CR>
" auto command
"set autochdir
set autowriteall
autocmd BufEnter * set mouse=

"formatprg
autocmd FileType c,cpp,h set formatprg=uncrustify\ -c\ ~/.config/nvim/.uncrustify.cfg\ --no-backup\ 2>/dev/null
"makeprg
autocmd FileType c,cpp set makeprg=make\ %:t:r\ 1>/dev/null\ &&\ ./%:t:r
autocmd FileType rust set makeprg=cargo\ run
nnoremap <silent>gb :make<CR>
"fold
set foldmethod=syntax
set foldlevelstart=99
