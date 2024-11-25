-- Configurações gerais do LunarVim
lvim.log.level = "warn"
lvim.format_on_save = true
vim.opt.guifont = "FiraCode Nerd Font Mono:h8"

vim.o.foldmethod = 'indent'
vim.o.foldenable = true
vim.o.foldlevel = 99

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
  shorten = 4,
}

vim.opt.fileformat = "unix"
