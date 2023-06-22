local M = {
  coc_extensions = {
    'coc-css',
    'coc-explorer',
    'coc-flutter',
    'coc-fzf-preview',
    'coc-git',
    'coc-gitignore',
    'coc-html',
    'coc-highlight',
    'coc-json',
    'coc-lists',
    'coc-pairs',
    'coc-prettier',
    '@yaegassy/coc-pylsp',
    'coc-rust-analyzer',
    'coc-sourcekit',
    'coc-snippets',
    'coc-tailwindcss',
    'coc-tasks',
    'coc-tslint',
    'coc-tsserver',
    'coc-vimlsp',
    'coc-yank',
    'coc-yaml',
    'coc-zi',
  },
  markdown_fenced_languages = {'vim', 'help'},
  coc_explorer_global_presets = {
    ['.vim'] = {
      ['root-uri'] = '~/.vim',
    },
    tab = {
      position =  'tab',
      ['quit-on-open'] = true,
    },
    floating = {
      position = 'floating',
      ['open-action-strategy'] = 'sourceWindow',
    },
    floatingTop = {
      position = 'floating',
      ['floating-position'] = 'center-top',
      ['open-action-strategy'] = 'sourceWindow',
    },
    floatingLeftside = {
      position = 'floating',
      ['floating-position'] = 'left-center',
      ['floating-width'] = 50,
      ['open-action-strategy'] = 'sourceWindow',
    },
    floatingRightside = {
      position = 'floating',
      ['floating-position'] = 'right-center',
      ['floating-width'] = 50,
      ['open-action-strategy'] = 'sourceWindow',
    },
    simplify = {
      ['file-child-template'] = '[selection | clip | 1] [indent][icon | 1] [filename omitCenter 1]'
    }
  },
}

return M
