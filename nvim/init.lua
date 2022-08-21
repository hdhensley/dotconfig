require('az0n.plugins')
require('az0n.settings')
require('az0n.lualine')
require('az0n.treesitter')
require('az0n.barbar')
require('az0n.nvim-tree')

vim.cmd([[set mouse+=a]])
-- Keybinds
require('az0n.keys.custom')
