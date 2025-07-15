lvim.plugins = {
  {
    'mg979/vim-visual-multi',
    -- See https://github.com/mg979/vim-visual-multi/issues/241
    -- init = function()
    --   vim.g.VM_default_mappings = 0
    --   vim.g.VM_maps = {
    --     ['Find Under'] = ''
    --   }
    --   vim.g.VM_add_cursor_at_pos_no_mappings = 1
    -- end,
  },
  { "Mofiqul/dracula.nvim" },
  { 'editorconfig/editorconfig-vim' },
  { "morhetz/gruvbox" },
  {
    "brenoprata10/nvim-highlight-colors",
    config = function()
      require('nvim-highlight-colors').setup()
    end
  },
  {
    "folke/trouble.nvim",
    cmd = "TroubleToggle",
  },
  {
    "folke/todo-comments.nvim",
    event = "BufRead",
    config = function()
      require("todo-comments").setup()
    end
  },
  {
    "folke/persistence.nvim",
    event = "BufReadPre",
    config = function()
      require("persistence").setup({
        dir = vim.fn.expand(vim.fn.stdpath "state" .. "/sessions/"),
        options = { "buffers", "curdir", "tabpages", "winsize" }
      })
    end
  },
  { "tpope/vim-surround" },
  { "marko-cerovac/material.nvim" },
  {
    "sontungexpt/witch",
    priority = 1000,
    lazy = false,
    config = function(_, opts)
      require("witch").setup(opts)
    end,
  },
  { "rafamadriz/neon" },
  {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' }
  },
  { 'getomni/neovim' },
  { 'pandasoli/nekovim' }
}
