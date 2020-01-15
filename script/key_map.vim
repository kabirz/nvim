" set paste
set pastetoggle=<F2>
map <F3> :Defx<CR>
" leaderf
noremap <F4> :Leaderf! file<CR>
noremap <F6> :LeaderfFunction!<CR>

noremap <C-p> :FZF<CR>
noremap <C-f> :Ag<CR>
map <leader>f :Ranger<CR>

" leaderf
noremap <leader>fr :<C-U><C-R>=printf("Leaderf! gtags -r %s --auto-jump", expand("<cword>"))<CR><CR>
noremap <leader>fd :<C-U><C-R>=printf("Leaderf! gtags -d %s --auto-jump", expand("<cword>"))<CR><CR>
noremap <leader>fo :<C-U><C-R>=printf("Leaderf! gtags --recall %s", "")<CR><CR>
noremap <leader>fn :<C-U><C-R>=printf("Leaderf gtags --next %s", "")<CR><CR>
noremap <leader>fp :<C-U><C-R>=printf("Leaderf gtags --previous %s", "")<CR><CR>
noremap <leader>ff :<C-U><C-R>=printf("Leaderf! rg  %s", expand("<cword>"))<CR><CR>

" window 
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
