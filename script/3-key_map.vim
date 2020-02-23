" set paste
set pastetoggle=<space>p
"coc
noremap <silent><space>a :CocCommand explorer<CR>
noremap <silent><space>y: CocList -A --normal yank<CR>
" popup
nmap <leader>t <Plug>(coc-translator-p)
vmap <leader>t <Plug>(coc-translator-pv)
" echo
nmap <leader>e <Plug>(coc-translator-e)
nmap <leader>e <Plug>(coc-translator-ev)
" replace
nmap <leader>r <Plug>(coc-translator-r)
nmap <leader>r <Plug>(coc-translator-rv)"
" close vim
noremap <silent><space>c :qa<CR>

"fzf
noremap <silent><C-p> :FZF<CR>
noremap <silent><C-f> :Ag<CR>
map <silent><space>r :Ranger<CR>

" leaderf
noremap <silent><space>fi :Leaderf! file<CR>
noremap <silent><space>fu :Leaderf! function<CR>
noremap <silent><space>fr :<C-U><C-R>=printf("Leaderf! gtags -r %s --auto-jump", expand("<cword>"))<CR><CR>
noremap <silent><space>fd :<C-U><C-R>=printf("Leaderf! gtags -d %s --auto-jump", expand("<cword>"))<CR><CR>
noremap <silent><space>fo :<C-U><C-R>=printf("Leaderf! gtags --recall %s", "")<CR><CR>
noremap <silent><space>ff :<C-U><C-R>=printf("Leaderf! rg  %s", expand("<cword>"))<CR><CR>

" window
nnoremap <space>h <C-w>h
nnoremap <space>j <C-w>j
nnoremap <space>k <C-w>k
nnoremap <space>l <C-w>l
nnoremap <space>o <C-o>
nnoremap <space>i <C-i>
nnoremap <silent><leader>ev :tabe $MYVIMRC<CR>
nnoremap <silent><leader>sv :source $MYVIMRC<CR>
nnoremap <silent> <space>y :<C-u>CocList -A --normal yank<CR>
