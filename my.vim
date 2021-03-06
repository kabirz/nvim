" buffer keymap
nnoremap <silent>bf :bfirst<CR>
nnoremap <silent>be :blast<CR>
nnoremap <silent>bh :bprevious<CR>
nnoremap <silent>bl :bnext<CR>
nnoremap <silent>b- :b#<CR>
nnoremap <silent>bd :bd!<CR>
nnoremap <silent>bp :<C-U><C-R>=printf("chdir %s", expand('%:h'))<CR><CR>

" tab keymap
nnoremap <silent>tf :tabfirst<CR>
nnoremap <silent>te :tablast<CR>
nnoremap <silent>th :tabprevious<CR>
nnoremap <silent>tl :tabnext<CR>

" set paste
set pastetoggle=<F2>
set mouse=a
" close vim
noremap <silent><space>q :qa <CR>
" auto command
"set autochdir
set autowriteall

"makeprg
autocmd FileType c,cpp set makeprg=make\ %:t:r\ 1>/dev/null\ &&\ ./%:t:r
nnoremap <silent>gb :make<CR>
"fold
set foldmethod=syntax
set foldlevelstart=99
autocmd FileType c,cpp          setlocal sw=8 sts=8 ts=8 noet cc=98
autocmd FileType rust           setlocal sw=4 sts=4 ts=4 et cc=98
autocmd filetype python         setlocal sw=4 sts=4 ts=4 et cc=80
