local M = {}

M.common = {
  n = {
    ['<Tab>']      = {'<C-o>', 'next postion'},
		['<leader>ce'] = {'<cmd> e $MYVIMRC <cr>', 'editor vim config'},
		['<leader>cg'] = {'<cmd> e ~/.gitconfig <cr>', 'editor git config'},
		['<leader>cs'] = {'<cmd> e ~/.ssh/config <cr>', 'editor ssh config'},
		['<leader>cu'] = {'<cmd> source $MYVIMRC <cr>', 'update vim config'},
	  ['<leader>h']  = {'<C-w>h', 'left windows'},
	  ['<leader>l']  = {'<C-w>l', 'right windows'},
	  ['<leader>j']  = {'<C-w>j', 'top windows'},
	  ['<leader>k']  = {'<C-w>k', 'bottom windows'},
    ['<leader>q']  = {'<cmd> qa <cr>', 'quit'},
	  [';q']         = {'<cmd> ccl <cr>', 'Close quickfix'},
    -- buffer keymap
    bd = {'<cmd> bdelete <cr>', 'close buffer'},
    bf = {'<cmd> bfirst <cr>', 'first buffer'},
    be = {'<cmd> blast <cr>', 'last buffer'},
    bh = {'<cmd> bprevious <cr>', 'privious buffer'},
    bl = {'<cmd> bnext <cr>', 'next buffer'},
    -- tab keymap
    tf = {'<cmd> tabfirst <cr>', 'first tab'},
    te = {'<cmd> tabfirst <cr>', 'last tab'},
    th = {'<cmd> tabprevious <cr>', 'privious tab'},
    tl = {'<cmd> tabnext <cr>', 'next tab'},
  },
}

M.coc = {
  n = {
    ['<leader>a']  = {function() vim.cmd('CocCommand explorer ' .. vim.fn.expand('%:p:h')) end, 'coc current file explorer'},
    ['<leader>e']  = {function() vim.cmd('CocCommand explorer ' .. vim.fn.getcwd()) end, 'coc cwd explorer'},
    ['<leader>bc'] = {'<cmd> CocCommand fzf-preview.Ctags <cr>', 'fzf ctags'},
    ['<leader>bj'] = {'<cmd> CocCommand fzf-preview.Jumps <cr>', 'jumps'},
    ['<leader>bb'] = {'<cmd> CocCommand fzf-preview.Buffers <cr>', 'buffers'},
    ['<leader>bB'] = {'<cmd> CocCommand fzf-preview.AllBuffers <cr>', 'All buffers'},
    ['<leader>bu'] = {'<cmd> CocCommand fzf-preview.MruFiles <cr>', 'MruFiles'},
    ['<leader>bw'] = {'<cmd> CocCommand fzf-preview.MrwFiles <cr>', 'MrwFiles'},
    ['<leader>bo'] = {'<cmd> CocCommand fzf-preview.OldFiles <cr>', 'OldFiles'},
    ['<leader>bq'] = {'<cmd> CocCommand fzf-preview.QuickFix <cr>', 'QuickFix'},
    ['<leader>bf'] = {function() vim.cmd('CocCommand fzf-preview.ProjectGrep '.. vim.fn.expand('<cword>')) end, 'ProjectGrep'},
    ['<leader>by'] = {'<cmd> CocList tasks <cr>', 'coc tasks'},
    ['<leader>cc'] = {'<cmd> CocConfig <cr>', 'coc config'},
    ['<leader>gl'] = {'<cmd> CocCommand fzf-preview.GitLogs <cr>', 'git log'},
    ['<leader>gf'] = {'<cmd> CocCommand fzf-preview.GitFiles <cr>', 'git files'},
    ['<leader>gs'] = {'<cmd> CocCommand fzf-preview.GitStatus <cr>', 'git status'},
    ['<leader>gt'] = {'<cmd> CocCommand fzf-preview.GitStashes <cr>', 'git stashe'},
    ['<leader>ga'] = {'<cmd> CocCommand fzf-preview.GitActions <cr>', 'git action'},
    ['<leader>rr'] = {'<cmd> CocCommand rust-analyzer.run <cr>', 'rust run'},
    ['<leader>re'] = {'<cmd> CocCommand rust-analyzer.expandMacro <cr>', 'rust expand macro'},
    ['<leader>rl'] = {'<cmd> CocCommand rust-analyzer.reload <cr>', 'rust analyzer reload'},
    ['<leader>ra'] = {'<cmd> CocCommand rust-analyzer.analyzerStatus <cr>', 'rust analyzer status'},
    ['<leader>ru'] = {'<cmd> CocCommand rust-analyzer.upgrade <cr>', 'rust analyzer upgrade'},
    ['<leader>y']  = {'<cmd> CocList -A --normal yank <cr>', 'yank lists'},
    [';t'] =         {'<Plug>(coc-translator-p)', 'coc translator pull'},
    [';e'] =         {'<Plug>(coc-translator-e)', 'coc translator echo'},
    [';r'] =         {'<Plug>(coc-translator-r)', 'coc translator replace'},
    [';F'] =         {'<Plug>(coc-format-selected)', 'coc format'},
    ['gd'] =         {'<Plug>(coc-definition)', 'coc lsp definition' },
    ['gr'] =         {'<Plug>(coc-references)', 'coc lsp references' },
    ['gy'] =         {'<Plug>(coc-type-definition)', 'coc lsp type definition' },
    ['gi'] =         {'<Plug>(coc-implementation)', 'coc lsp implementation' },
    ['gw'] =         {'<Plug>(coc-diagnostic-next)', 'coc lsp diagnostic next' },
    ['gW'] =         {'<Plug>(coc-diagnostic-prev)', 'coc lsp diagnostic prev' },
    ['ge'] =         {'<Plug>(coc-diagnostic-next-error)', 'coc lsp diagnosti -next error' },
    ['gE'] =         {'<Plug>(coc-diagnostic-prev-error)', 'coc lsp diagnostic prev error' },
    ['g['] =         {'<Plug>(coc-format)', 'coc lsp format' },
    ['g]'] =         {'<Plug>(coc-format-selected)', 'coc lsp format selected' },
  },
  i = {
    ['<C-y>']  = {'<cmd> CocList -A --normal yank <cr>', 'yank lists'},
  },
  [''] = {
    ['<C-RightMouse>'] = {'<Plug>(coc-references)', 'coc lsp references' },
    ['<C-LeftMouse>'] = {'<Plug>(coc-definition)', 'coc lsp definition' },
  },
}

M.leaderf = {
  n = {
    ['<leader>ff'] = {function() vim.cmd('Leaderf! rg ' .. vim.fn.expand('<cword>')) end, 'leaderf! rg'},
		['<leader>fi'] = {'<cmd> Leaderf! file <cr>', 'leader file'},
		['<leader>fu'] = {'<cmd> Leaderf! function <cr>', 'leader function'},
		['<leader>fm'] = {'<cmd> Leaderf! mru --cwd <cr>', 'current project history'},
		['<leader>fh'] = {'<cmd> Leaderf! mru <cr>', 'global history'},
  },
}

M.floaterm = {
  n = {
		['<leader>tp'] = {'<cmd> FloatermNew ipython3 <cr>', 'ipython3'},
		['<leader>tr'] = {'<cmd> FloatermNew ranger <cr>', 'ranger'},
		['<leader>tf'] = {'<cmd> FloatermNew fzf <cr>', 'fzf'},
		['<leader>tl'] = {'<cmd> FloatermNew lazygit <cr>', 'lazygit'},
		['<leader>tx'] = {'<cmd> FloatermNew xonsh <cr>', 'xonsh'},
  },
}

M.silicon = {
  v = {
    ['<leader>s'] = {'<cmd> Silicon <cr>', 'silicon code'},
  },
}

M.vista = {
  n = {
    ['v'] = {'<cmd> Vista!! <cr>', 'vista ctags'},
  },
}

M.clap = {
  n = {
		['<leader>zf'] = {'<cmd> Clap files <cr>', 'clap files'},
		['<leader>zb'] = {'<cmd> Clap buffers <cr>', 'clap buffers'},
		['<leader>zC'] = {'<cmd> Clap bcommits <cr>', 'clap current commits'},
		['<leader>zc'] = {'<cmd> Clap commits <cr>', 'clap commits'},
		['<leader>zl'] = {'<cmd> Clap blines <cr>', 'clap lines'},
		['<leader>zg'] = {'<cmd> Clap git_diff_files <cr>', 'git diff files'},
		['<leader>zh'] = {'<cmd> Clap history <cr>', 'clap history'},
		['<leader>zj'] = {'<cmd> Clap jumps <cr>', 'clap jumps'},
		['<leader>zr'] = {'<cmd> Clap grep <cr>', 'clap grep'},
		['<leader>za'] = {'<cmd> Clap registers <cr>', 'clap registers'},
		['<leader>zm'] = {'<cmd> Clap maps <cr>', 'clap maps'},
		['<leader>zv'] = {'<cmd> Clap grep ++query=<cword> <cr>', 'find current word'},
		['<leader>zR'] = {'<cmd> Clap grep2 <cr>', 'clap grep2'},
		['<leader>zd'] = {'<cmd> Clap command <cr>', 'clap command'},
		['<leader>zy'] = {'<cmd> Clap yanks <cr>', 'clap yanks'},
		['<leader>zw'] = {'<cmd> Clap windows <cr>', 'clap windows'},
		['<leader>z:'] = {'<cmd> Clap hist: <cr>', 'clap history command'},
		['<leader>z/'] = {'<cmd> Clap hist/ <cr>', 'clap history search'},
  },
}

M.fzf = {
  n = {
    [';j'] = {'<cmd> MRU <cr>', 'mru find file'},
    ['<C-p>'] = {'<cmd> FZF <cr>', 'fzf find file'},
    ['<C-f>'] = {'<cmd> Ag <cr>', 'ag find strings'},
  },
}

M.lazygit = {
  n = {
    [';l'] = {'<cmd> Lazygit <cr>', 'lazygit'},
  },
}

M.asynctasks = {
  n = {
		[';cb'] = {'<cmd> AsyncTask cmake-build <cr>', 'cmake build'},
		[';cr'] = {'<cmd> AsyncTask cmake-run <cr>', 'cmake run'},
		[';ca'] = {'<cmd> AsyncTask cmake-build-and-run <cr>', 'cmake build and run'},
		[';cc'] = {'<cmd> AsyncTask cmake-clean <cr>', 'cmake clean'},
		[';cf'] = {'<cmd> AsyncTask cargo-fb <cr>', 'cargo flash bin'},
		[';ce'] = {'<cmd> AsyncTask cargo-fe <cr>', 'cargo flash example'},
		[';fb'] = {'<cmd> AsyncTask file-build <cr>', 'file build'},
		[';fr'] = {'<cmd> AsyncTask file-run <cr>', 'file run'},
		[';wb'] = {'<cmd> AsyncTask west-build <cr>', 'west build'},
		[';wr'] = {'<cmd> AsyncTask west-rebuild <cr>', 'west rebuild'},
		[';wf'] = {'<cmd> AsyncTask west-flash <cr>', 'west flash'},
  },
}

M.zoom = {
  n = {
	  ['<leader>m']  = {'<Plug>(zoom-toggle)', 'zoom toggle'},
  },
}

M.load_mappings = function(section)
  local section_value = M[section]
  if not section_value then
    return
  end
  for mode, mode_values in pairs(section_value) do
    for key, content in pairs(mode_values) do
      vim.keymap.set(mode, key, content[1], {desc = content[2] })
    end
  end
end

return M
