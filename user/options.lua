-- Configurações gerais do LunarVim
lvim.log.level = "warn"
-- lvim.format_on_save = true
vim.opt.guifont = "FiraCode Nerd Font Mono"

vim.o.foldmethod = 'indent'
vim.o.foldenable = true
vim.o.foldlevel = 99

vim.opt.clipboard = "unnamedplus"
-- vim.g.clipboard = {
--   name = 'WslClipboard',
--   copy = {
--     ['+'] = "/usr/local/bin/clipboard.sh",
--     ['*'] = "/usr/local/bin/clipboard.sh",
--   },
--   paste = {
--     ['+'] = function()
--       return vim.fn.systemlist("powershell.exe -Command \"Get-Clipboard\" | sed 's/\r$//'")
--     end,
--     ['*'] = function()
--       return vim.fn.systemlist("powershell.exe -Command \"Get-Clipboard\" | sed 's/\r$//'")
--     end,
--   },
--   cache_enabled = true,
-- }
vim.g.clipboard = {
  name = 'custom_clipboard',
  copy = {
    ['+'] = 'xclip -selection clipboard',
    ['*'] = 'xclip -selection clipboard',
  },
  paste = {
    ['+'] = 'xclip -selection clipboard -o',
    ['*'] = 'xclip -selection clipboard -o',
  },
  cache_enabled = 0,
}

-- Configurações do Treesitter
lvim.builtin.treesitter.ignore_install = {}
lvim.builtin.treesitter.highlight.enabled = true

-- Configurações do NvimTree
lvim.builtin.nvimtree.setup.renderer.icons.show.git = true

-- Configurações do Projeto
lvim.builtin.project.detection_methods = { "lsp", "pattern" }
lvim.builtin.project.patterns = {
  ".git",
  "package-lock.json",
  "yarn.lock",
  "package.json",
  "requirements.txt",
}

-- Configurações do Shell
vim.opt.shell = "/bin/zsh"

-- Outras configurações de Vim
vim.o.linebreak = true
vim.o.wrap = true
vim.o.sessionoptions = "blank,buffers,curdir,folds,help,tabpages,winsize,winpos,terminal,localoptions"

lvim.builtin.telescope.defaults.path_display = {
  shorten = 5,
}

vim.opt.fileformat = "unix"
vim.opt.fileencodings = { "utf-8", "default", "latin1", "ucs-bom" }
