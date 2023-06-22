local M = {}

M.setup = function()
  vim.g.vista_echo_cursor_strategy = 'floating_win'
  vim.g.vista_icon_indent = {"╰─▸ ", "├─▸ "}
  vim.g.vista_default_executive = 'coc'
  vim.g.vista_ctags_cmd = { ['haskell'] = 'hasktags -x -o - -c'}
  vim.g.vista_fzf_preview = {'right:50%'}
  vim.g['vista#renderer#enable_icon'] = 1
  vim.g['vista#renderer#icons'] = {
    ['func'] =           "\\uf794",
    ['function'] =       "\\uf794",
    ['functions'] =      "\\uf794",
    ['var'] =            "\\uf71b",
    ['variable'] =       "\\uf71b",
    ['variables'] =      "\\uf71b",
    ['const'] =          "\\uf8ff",
    ['constant'] =       "\\uf8ff",
    ['method'] =         "\\uf6a6",
    ['package'] =        "\\ue612",
    ['packages'] =       "\\ue612",
    ['enum'] =           "\\uf435",
    ['enumerator'] =     "\\uf435",
    ['module'] =         "\\uf668",
    ['modules'] =        "\\uf668",
    ['type'] =           "\\ue22b",
    ['typedef'] =        "\\ue22b",
    ['types'] =          "\\ue22b",
    ['field'] =          "\\uf93d",
    ['fields'] =         "\\uf93d",
    ['macro'] =          "\\uf8a3",
    ['macros'] =         "\\uf8a3",
    ['map'] =            "\\ufb44",
    ['class'] =          "\\uf9a9",
    ['augroup'] =        "\\ufb44",
    ['struct'] =         "\\ufb44",
    ['union'] =          "\\ufacd",
    ['member'] =         "\\uf02b",
    ['target'] =         "\\uf893",
    ['property'] =       "\\ufab6",
    ['interface'] =      "\\ufa52",
    ['namespace'] =      "\\uf475",
    ['subroutine'] =     "\\uf915",
    ['implementation'] = "\\uf87a",
    ['typeParameter'] =  "\\uf278",
    ['default'] =        "\\uf29c"
  }
end

return M
