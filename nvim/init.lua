require('az0n.plugins')
require('az0n.settings')
require('az0n.lualine')
require('az0n.treesitter')
require('az0n.barbar')
require("nvim-tree").setup()

vim.cmd([[set mouse+=a]])
-- Keybinds
require('az0n.keys.custom')
