vim.opt.showmatch = true               -- show matching brackets.
vim.opt.ignorecase = true              -- case insensitive matching
vim.opt.mouse='v'                      -- middle-click paste with mouse
vim.opt.hlsearch = true                -- highlight search results
vim.opt.autoindent = true              -- indent a new line the same amount as the line just typed
vim.opt.number = true                  -- add line numbers
vim.opt.relativenumber = true          -- add relative line numbers
vim.opt.wildmode='longest,list'        -- get bash-like tab completions
vim.opt.cc='80'                        -- set an 80 column border for good coding style
--filetype plugin indent on   -- allows auto-indenting depending on file type
vim.opt.tabstop=4               -- number of columns occupied by a tab character
vim.opt.expandtab = true               -- converts tabs to white space
vim.opt.shiftwidth=4            -- width for autoindents
vim.opt.softtabstop=4           -- see multiple spaces as tabstops so <BS> does the right thing

vim.cmd('syntax enable')
vim.cmd('colorscheme dracula')
