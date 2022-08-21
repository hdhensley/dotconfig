local install_path = vim.fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
  vim.fn.system({'git', 'clone', 'https://github.com/wbthomason/packer.nvim', install_path})
  vim.api.nvim_command 'packadd packer.nvim'
end

-- the plugin install follows from here
return require('packer').startup(function(use)
    use 'arcticicestudio/nord-vim' -- Nord theme
    use 'folke/tokyonight.nvim' -- TokyoNight theme
    use 'Mofiqul/dracula.nvim'

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.0',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

    use 'kyazdani42/nvim-web-devicons'

    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }
    use 'lukas-reineke/indent-blankline.nvim'

    use 'romgrk/barbar.nvim'

    use {
    'kyazdani42/nvim-tree.lua',
    requires = {
        'kyazdani42/nvim-web-devicons', -- optional, for file icons
    },
        tag = 'nightly' -- optional, updated every week. (see issue #1193)
    }

    use 'neovim/nvim-lspconfig' -- Easy LSP configuration
    use 'kabouzeid/nvim-lspinstall' -- Install LSP servers on demand with :LSPInstall <name_of_language>

    use 'mhinz/vim-startify' -- Pretty start screen

    use 'elzr/vim-json' -- JSON syntax (error) highlighting + concealment
    use 'pangloss/vim-javascript'-- Syntax highlighting and concealment for JavaScript
    use 'leafgarland/typescript-vim' -- Typescript syntax highlighting

    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }

    use {
        'AckslD/nvim-whichkey-setup.lua',
        requires = {'liuchengxu/vim-which-key'},
    }
    use {'neoclide/coc.nvim', branch = 'release'}

    use({
        "iamcco/markdown-preview.nvim",
        run = function() vim.fn["mkdp#util#install"]() end,
    })

    use {'preservim/tagbar'}

    use {'glepnir/dashboard-nvim'}   
    
    use {'tpope/vim-commentary'}

    use {'vim-airline/vim-airline'}

    use {'terryma/vim-multiple-cursors'}
end)
