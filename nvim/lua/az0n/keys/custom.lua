vim.g.mapleader = " "

vim.cmd 'source $HOME/.config/nvim/lua/az0n/keys/which-key.vim'
vim.cmd 'source $HOME/.config/nvim/lua/az0n/keys/telescope.vim'
vim.cmd 'source $HOME/.config/nvim/lua/az0n/keys/coc.vim'

local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

--BARBAR
-- Move to previous/next
map('n', '<M-,>', '<Cmd>BufferPrevious<CR>', opts)
map('n', '<M-.>', '<Cmd>BufferNext<CR>', opts)
-- Re-order to previous/next
map('n', '<M-<>', '<Cmd>BufferMovePrevious<CR>', opts)
map('n', '<M->>', '<Cmd>BufferMoveNext<CR>', opts)
-- Goto buffer in position...
map('n', '<M-1>', '<Cmd>BufferGoto 1<CR>', opts)
map('n', '<M-2>', '<Cmd>BufferGoto 2<CR>', opts)
map('n', '<M-3>', '<Cmd>BufferGoto 3<CR>', opts)
map('n', '<M-4>', '<Cmd>BufferGoto 4<CR>', opts)
map('n', '<M-5>', '<Cmd>BufferGoto 5<CR>', opts)
map('n', '<M-6>', '<Cmd>BufferGoto 6<CR>', opts)
map('n', '<M-7>', '<Cmd>BufferGoto 7<CR>', opts)
map('n', '<M-8>', '<Cmd>BufferGoto 8<CR>', opts)
map('n', '<M-9>', '<Cmd>BufferGoto 9<CR>', opts)
map('n', '<M-0>', '<Cmd>BufferLast<CR>', opts)
-- Pin/unpin buffer
map('n', '<M-p>', '<Cmd>BufferPin<CR>', opts)
-- Close buffer
map('n', '<M-c>', '<Cmd>BufferClose<CR>', opts)
-- Wipeout buffer
--                 :BufferWipeout
-- Close commands
--                 :BufferCloseAllButCurrent
--                 :BufferCloseAllButPinned
--                 :BufferCloseAllButCurrentOrPinned
--                 :BufferCloseBuffersLeft
--                 :BufferCloseBuffersRight
-- Magic buffer-picking mode
map('n', '<C-p>', '<Cmd>BufferPick<CR>', opts)
-- Sort automatically by...
map('n', '<Space>bb', '<Cmd>BufferOrderByBufferNumber<CR>', opts)
map('n', '<Space>bd', '<Cmd>BufferOrderByDirectory<CR>', opts)
map('n', '<Space>bl', '<Cmd>BufferOrderByLanguage<CR>', opts)
map('n', '<Space>bw', '<Cmd>BufferOrderByWindowNumber<CR>', opts)

-- Other:
-- :BarbarEnable - enables barbar (enabled by default)
-- :BarbarDisable - very bad command, should never be used

-- NvimTree
map('n', '<leader>e', ':NvimTreeToggle<CR>', opts)            -- open/close
map('n', '<leader>f', ':NvimTreeRefresh<CR>', opts)       -- refresh
map('n', '<leader>n', ':NvimTreeFindFile<CR>', opts)      -- search file

-- Tagbar
map('n', '<F8>', ':TagbarToggle<CR>', opts)

map('n', '+', '<C-a>', opts)
map('n', '-', '<C-x>', opts)

map('n', '<C-a>', 'gg<S-v>G', opts)

map('n', 'te', ':tabedit<Return>', opts)
-- Split Window
map('n', 'ss', ':split<Return><C-w>w', opts)
map('n', 'sv', ':vsplit<Return><C-w>w', opts)
-- Move window
map('', 's<left>', '<C-w>h', opts)
map('', 's<up>', '<C-w>k', opts)
map('', 's<down>', '<C-w>j', opts)
map('', 's<right', '<C-w>l', opts)
map('', 'sh', '<C-w>h', opts)
map('', 'sk', '<C-w>k', opts)
map('', 'sj', '<C-w>j', opts)
map('', 'sl', '<C-w>l', opts)
-- Resize window
map('n', '<C-w><left>', '<C-w><', opts)
map('n', '<C-w><right>', '<C-w>>', opts)
map('n', '<C-w><up>', '<C-w>+', opts)
map('n', '<C-w><down>', '<C-w>-', opts)
