" set paste
noremap <silent><F2> :wincmd w<CR>
set pastetoggle=<F5>
noremap <silent><F3> :Defx<CR>
" leaderf
noremap <silent><F4> :Leaderf! file<CR>
noremap <silent><F6> :LeaderfFunction!<CR>

noremap <silent><C-p> :FZF<CR>
noremap <silent><C-f> :Ag<CR>
map <silent><leader>f :Ranger<CR>

" leaderf
noremap <silent><leader>fr :<C-U><C-R>=printf("Leaderf! gtags -r %s --auto-jump", expand("<cword>"))<CR><CR>
noremap <silent><leader>fd :<C-U><C-R>=printf("Leaderf! gtags -d %s --auto-jump", expand("<cword>"))<CR><CR>
noremap <silent><leader>fo :<C-U><C-R>=printf("Leaderf! gtags --recall %s", "")<CR><CR>
noremap <silent><leader>fn :<C-U><C-R>=printf("Leaderf gtags --next %s", "")<CR><CR>
noremap <silent><leader>fp :<C-U><C-R>=printf("Leaderf gtags --previous %s", "")<CR><CR>
noremap <silent><leader>ff :<C-U><C-R>=printf("Leaderf! rg  %s", expand("<cword>"))<CR><CR>

" window 
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <silent><leader>ev :tabe $MYVIMRC<CR>
nnoremap <silent><leader>sv :source $MYVIMRC<CR>
