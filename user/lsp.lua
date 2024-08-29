-- local lvim_lsp = require('lvim.lsp')
-- local js = require('typescript')

-- configure tsserver server manually.
-- vim.list_extend(lvim.lsp.automatic_configuration.skipped_servers, { "tsserver" })

-- local common_on_attach = lvim_lsp.common_on_attach
-- local common_capabilities = lvim_lsp.common_capabilities()

vim.opt.clipboard = "unnamedplus"

-- Javascript config using typescript.nvim
-- js.setup({
--   server = {
--     root_dir = require('lspconfig.util').root_pattern('.git'),
--     capabilities = common_capabilities,
--     on_attach = common_on_attach,
--   },
-- })

local formatters = require "lvim.lsp.null-ls.formatters"
formatters.setup({
  {
    command = "prettierd",
    filetypes = {
      "javascript",
      "javascriptreact",
      "typescript",
      "typescriptreact",
      "vue",
      "css",
      "scss",
      "less",
      "html",
      "yaml",
      "markdown",
      "markdown.mdx",
      "graphql",
      "handlebars",
      "json",
    }
  },
})

local linters = require "lvim.lsp.null-ls.linters"
linters.setup {
  { command = "eslint", filetypes = { "javascript", "typescript", "typescriptreact" } }
}

-- local linters = require "lvim.lsp.null-ls.linters"
-- linters.setup({
--   {
--     command = "eslint_d",
--     filetypes = { "javascript", "typescript", "typescriptreact", "vue", "json" }
--   },
-- })
