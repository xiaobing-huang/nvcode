-- vim.cmd [[packadd packer.nvim]]
local execute = vim.api.nvim_command
local fn = vim.fn
local install_path = fn.stdpath('data') .. '/site/pack/paqs/opt/paq-nvim'
if fn.empty(fn.glob(install_path)) > 0 then
     execute('!git clone https://github.com/savq/paq-nvim.git ' .. install_path)
     execute 'packadd paq-nvim'         -- Load package
 end
-- local my = function(file) require(file) end
-- vim.cmd 'autocmd BufWritePost plugins.lua PackerCompile' -- Auto compile when there are changes in plugins.lua
-- require('packer').init({display = {non_interactive = true}})

vim.cmd 'packadd paq-nvim'         -- Load package
local paq = require'paq-nvim'.paq  -- Import module and bind `paq` function

	paq {'savq/paq-nvim', opt=true}     -- Let Paq manage itself

-- Add your packages
    -- LSP
    paq {'neovim/nvim-lspconfig', opt=true}
    paq {'glepnir/lspsaga.nvim', opt=true}
    paq {'onsails/lspkind-nvim', opt=true}
    paq {'kosayoda/nvim-lightbulb', opt=true}
    paq {'kabouzeid/nvim-lspinstall', opt=true}

    -- Telescope
    paq {'nvim-lua/popup.nvim', opt=true}
    paq {'nvim-lua/plenary.nvim', opt=true}
    paq {'nvim-telescope/telescope.nvim', opt=true}

    -- Debugging
    paq {'mfussenegger/nvim-dap', opt=true}

    -- Autocomplete
    paq {'hrsh7th/nvim-compe', opt=true}
    paq {'mattn/emmet-vim', opt=true}
    paq {'hrsh7th/vim-vsnip', opt=true}
    paq {"rafamadriz/friendly-snippets", opt=true}

    -- Treesitter
    paq {'nvim-treesitter/nvim-treesitter',opt=true, run = ':TSUpdate'}
    paq {'windwp/nvim-ts-autotag', opt=true}

    -- Explorer
    paq {'kyazdani42/nvim-tree.lua', opt=true}

    --paq {'lukas-reineke/indent-blankline.nvim', opt=true, branch = 'lua'}
    paq {'lewis6991/gitsigns.nvim', opt=true}
    paq {'liuchengxu/vim-which-key', opt=true}
    paq {'ChristianChiarulli/dashboard-nvim', opt=true}
    paq {'windwp/nvim-autopairs', opt=true}
    paq {'terrortylor/nvim-comment', opt=true}
    paq {'kevinhwang91/nvim-bqf', opt=true}

    -- Color
    paq {'christianchiarulli/nvcode-color-schemes.vim', opt=true}
    paq {'norcalli/nvim-colorizer.lua', opt=true}

    -- Icons
    paq {'kyazdani42/nvim-web-devicons', opt=true}
    paq {'ryanoasis/vim-devicons', opt=true}

    -- Status Line and Bufferline
    paq {'glepnir/galaxyline.nvim', opt=true}
    paq {'romgrk/barbar.nvim', opt=true}

     vim.cmd 'packadd nvim-lspconfig'         -- Load package
     vim.cmd 'packadd lspsaga.nvim'         -- Load package
     vim.cmd 'packadd lspkind-nvim'         -- Load package
     vim.cmd 'packadd nvim-lightbulb'         -- Load package
     vim.cmd 'packadd nvim-lspinstall'         -- Load package
     vim.cmd 'packadd popup.nvim'         -- Load package
     vim.cmd 'packadd plenary.nvim'         -- Load package
     vim.cmd 'packadd telescope.nvim'         -- Load package
     vim.cmd 'packadd nvim-dap'         -- Load package
     vim.cmd 'packadd nvim-compe'         -- Load package
     vim.cmd 'packadd emmet-vim'         -- Load package
     vim.cmd 'packadd vim-vsnip'         -- Load package
     vim.cmd 'packadd friendly-snippets'         -- Load package
     vim.cmd 'packadd nvim-treesitter'         -- Load package
     vim.cmd 'packadd nvim-ts-autotag'         -- Load package
     vim.cmd 'packadd nvim-tree.lua'         -- Load package
     vim.cmd 'packadd gitsigns.nvim'         -- Load package
     vim.cmd 'packadd vim-which-key'         -- Load package
     vim.cmd 'packadd dashboard-nvim'         -- Load package
     vim.cmd 'packadd nvim-autopairs'         -- Load package
     vim.cmd 'packadd nvim-comment'         -- Load package
     vim.cmd 'packadd nvim-bqf'         -- Load package
     vim.cmd 'packadd nvcode-color-schemes.vim'         -- Load package
     vim.cmd 'packadd nvim-colorizer.lua'         -- Load package
     vim.cmd 'packadd nvim-web-devicons'         -- Load package
     vim.cmd 'packadd vim-devicons'         -- Load package
     vim.cmd 'packadd galaxyline.nvim'         -- Load package
     vim.cmd 'packadd barbar.nvim'         -- Load package
