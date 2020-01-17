call defx#custom#option('_', {
      \ 'winwidth': 30,
      \ 'split': 'vertical',
      \ 'direction': 'topleft',
      \ 'show_ignored_files': 0,
      \ 'ignored_files': '*.pyc,*.o,*.so,*.d,*.lo,*~,*.la,.deps,.libs,.git,.svn,*.cache',
      \ 'buffer_name': '',
      \ 'toggle': 1,
      \ 'resume': 1,
      \ 'columns': 'mark:indent:icons:filename:type'
      \ })

autocmd FileType defx call s:defx_my_settings()
" more configure in: https://github.com/Silnar/dotfiles/blob/43608ed6a68bd105aeaf0e7f886c14aa0baecc0d/.config/nvim/init.vim
function! s:defx_my_settings() abort
        nnoremap <silent><buffer><expr> <CR> <SID>defx_toggle_tree()
        nnoremap <silent><buffer><expr> tb  defx#do_action('open', 'tabe')
	nnoremap <silent><buffer><expr> d  defx#do_action('remove')
  	nnoremap <silent><buffer><expr> r  defx#do_action('rename')
	nnoremap <silent><buffer><expr> m  defx#do_action('new_directory')
	nnoremap <silent><buffer><expr> c  defx#do_action('new_file')
	nnoremap <silent><buffer><expr> yy defx#do_action('yank_path')
endfunction
function! s:defx_toggle_tree() abort
    " Open current file, or toggle directory expand/collapse
    if defx#is_directory()
        return defx#do_action('open_or_close_tree')
    endif
    return defx#do_action('multi', ['drop'])
    "return defx#do_action('open', 'wincmd w \| drop')
endfunction

