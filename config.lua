-- Read the docs: https://www.lunarvim.org/docs/configuration
-- Example configs: https://github.com/LunarVim/starter.lvim
-- Video Tutorials: https://www.youtube.com/watch?v=sFA9kX-Ud_c&list=PLhoH5vyxr6QqGu0i7tt_XoVK9v-KvZ3m6
-- Forum: https://www.reddit.com/r/lunarvim/
-- Discord: https://discord.com/invite/Xb9B4Ny

package.path = package.path .. ';' .. vim.fn.stdpath('config') .. '/user/?.lua'

require('plugins')
require('colorscheme')
require('options')
require('keymaps')
require('which-key')
require('lualine-config')
require('lsp')
require('autocmds')
