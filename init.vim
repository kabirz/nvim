if exists('g:vscode')
	finish
endif
runtime script/1-settings.vim
runtime script/2-plugin.vim
runtime script/3-key_map.vim
runtime script/4-ready.vim
