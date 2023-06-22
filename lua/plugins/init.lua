local plugins = {
  'mhinz/vim-startify',
  'wsdjeg/dein-ui.vim',
  'ryanoasis/vim-devicons',
  'godlygeek/tabular',
  'junegunn/vim-emoji',
  'sharksforarms/vimspector-gen',
  'Exafunction/codeium.vim',
  'cpiger/NeoDebug',
  'honza/vim-snippets',
  'tpope/vim-commentary',
  'tpope/vim-repeat',
  'tpope/vim-surround',
  'tpope/vim-speeddating',
  'itchyny/calendar.vim',
  'tpope/vim-fugitive',
  'cespare/vim-toml',
  'mhinz/vim-startify',
  {
    'vim-airline/vim-airline',
    init = function()
      vim.g.airline_powerline_fonts = 1
      vim.g.airline_disable_statusline = 1
      vim.g['airline#extensions#tabline#enabled'] = 1
    end,
  },
  {
    'vim-airline/vim-airline-themes',
    init = function()
      vim.g.airline_theme = 'badwolf'
    end,

  },
  {
    'hardcoreplayers/spaceline.vim',
    init = function()
      vim.g.spaceline_seperate_style = 'arrow'
      vim.g.spaceline_lsp_executive = 'coc'
    end,
  },
  {
    'skywind3000/asynctasks.vim',
    config = function()
      require('plugins.mappings').load_mappings('asynctasks')
    end,
  },
  {
    'kdheepak/lazygit.nvim',
    config = function()
      require('plugins.mappings').load_mappings('lazygit')
    end,
  },
  {
    'junegunn/fzf',
    build = function() vim.fn['fzf#install']() end,
  },
  {
    'junegunn/fzf.vim',
    dependencies = 'junegunn/fzf',
    config = function()
      vim.api.nvim_command [[command! -bang -nargs=* MRU call fzf#vim#history(fzf#vim#with_preview())]]
      require('plugins.mappings').load_mappings('fzf')
    end,
  },
  {
    'tbodt/deoplete-tabnine',
    build = './install.sh',
  },
  {
    'skywind3000/asyncrun.vim',
    init = function()
      vim.g.asyncrun_open = 6
    end,
  },
  {
    'neoclide/coc.nvim',
    branch = 'release',
    opts = require('plugins.configs.coc'),
    config = function(_, opts)
      vim.g.coc_global_extensions = opts.coc_extensions
      vim.g.markdown_fenced_language = opts.markdown_fenced_languages
      vim.g.coc_explorer_global_presets = opts.coc_explorer_global_presets
      require('plugins.mappings').load_mappings('coc')
    end,
  },
  {
    'Yggdroot/LeaderF',
    build =  './install.sh',
    init = function()
      vim.g.Lf_ShowRelativePath = 0
      vim.g.Lf_HideHelp = 1
      vim.g.Lf_PreviewResult = { Function = 0, Colorscheme = 1}
      vim.g.Lf_ReverseOrder = 0
      vim.g.Lf_ShortcutF = ';f'
      vim.g.Lf_ShortcutB = ';b'
      require('plugins.mappings').load_mappings('leaderf')
    end,
  },
  {
    'dracula/vim',
    config = function()
      vim.g.dracula_colorterm = 0
      vim.cmd([[
      colorscheme dracula
      hi! link Pmenu        DraculaGreen
      hi! link PmenuSbar    DraculaBgDark
      hi! link PmenuSel     DraculaYellow
      ]])
    end,
  },
  {
    'sirver/ultisnips',
    config = function()
      vim.g.UltiSnipsExpandTrigger = '<tab>'
      vim.g.UltiSnipsJumpForwardTrigger = '<tab>'
      vim.g.UltiSnipsJumpBackwardTrigger = '<s-tab>'
    end,
  },
  {
    'luochen1990/rainbow',
    config = function()
      vim.g.rainbow_active = 1
      vim.g.rainbow_conf = { separately = { cmake = 0 } }
    end,
  },
  {
    'plasticboy/vim-markdown',
    dependencies = 'godlygeek/tabular',
    init = function()
      vim.g.vim_markdown_folding_style_pythonic = 1
      vim.g.vim_markdown_folding_disabled = 1
    end,
  },
  {
    'puremourning/vimspector',
    build = './install_gadget.py --enable-c --enable-python',
    init = function()
      vim.g.vimspector_enable_mappings='HUMAN'
    end,
  },
  {
    'voldikss/vim-floaterm',
    init = function()
      vim.g.floaterm_width=0.4
      vim.g.floaterm_height=0.4
      vim.g.floaterm_position="bottomright"
      vim.g.floaterm_keymap_toggle = '<Space>tt'
      vim.g.floaterm_keymap_next = '<Space>tn'
      vim.g.floaterm_keymap_prev = '<Space>tm'
      require('plugins.mappings').load_mappings('floaterm')
    end,
  },

  {
    'liuchengxu/vista.vim',
    init = function()
      require('plugins.configs.vista').setup()
      require('plugins.mappings').load_mappings('vista')
    end,
  },

  {
    'liuchengxu/vim-clap',
    build = './install.sh',
    init = function()
      vim.g.clap_theme = 'material_design_dark'
      require('plugins.mappings').load_mappings('clap')
    end,
  },

  {
    'segeljakt/vim-silicon',
    init = function(_, opts)
      vim.g.silicon = {
        {['theme'] =              'Dracula'},
        {['font'] =               'Source Code Pro'},
        {['pad-horiz'] =          0},
        {['pad-vert'] =           0},
        {['shadow-blur-radius'] = 0},
        {['shadow-offset-x'] =    0},
        {['shadow-offset-y'] =    0},
        {['line-number'] =        true},
        {['round-corner'] =       false},
        {['window-controls'] =    true},
        {['output'] =             '~/images/silicon-{time:%Y-%m-%d-%H%M%S}.png'},
      }
      require('plugins.mappings').load_mappings('silicon')
    end,
  },
  {
    'rust-lang/rust.vim',
    ft = 'rust',
    init = function()
      vim.g.rustfmt_command = 'rustfmt'
      vim.g.cargo_makeprg_params = 'run'
      vim.g.cargo_shell_command_runner = '!'
    end,
  },

  { 
    'dhruvasagar/vim-zoom',
    config = function()
      require('plugins.mappings').load_mappings('zoom')
    end,
  },

  {
    "williamboman/mason.nvim",
    opts = function()
      return require "plugins.configs.mason"
    end,
    config = function(_, opts)
      require("mason").setup(opts)
      -- custom nvchad cmd to install all mason binaries listed
      vim.api.nvim_create_user_command("MasonInstallAll", function()
        vim.cmd("MasonInstall " .. table.concat(opts.ensure_installed, " "))
      end, {})

      vim.g.mason_binaries_list = opts.ensure_installed
    end,
  },

  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    keys = { "<leader>", '"', "'", "`", "c", "v", 'g', ';' },
    init = function()
      vim.o.timeout = true
      vim.o.timeoutlen = 300
    end,
    config = function(_, opts)
      require("which-key").setup(opts)
    end,
  },

}

require("lazy").setup(plugins)
