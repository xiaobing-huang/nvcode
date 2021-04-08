-- vim.cmd [[packadd packer.nvim]]
-- local execute = vim.api.nvim_command
-- local fn = vim.fn
-- local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
-- if fn.empty(fn.glob(install_path)) > 0 then
--     execute('!git clone https://github.com/wbthomason/packer.nvim ' .. install_path)
--     execute 'packadd packer.nvim'
-- end
-- local my = function(file) require(file) end
-- vim.cmd 'autocmd BufWritePost plugins.lua PackerCompile' -- Auto compile when there are changes in plugins.lua
-- require('packer').init({display = {non_interactive = true}})

vim.cmd 'packadd paq-nvim'         -- Load package
local paq = require'paq-nvim'.paq  -- Import module and bind `paq` function
paq{'savq/paq-nvim', opt=true}     -- Let Paq manage itself

-- Add your packages
    -- LSP
    paq 'neovim/nvim-lspconfig'
    paq 'glepnir/lspsaga.nvim'
    paq 'onsails/lspkind-nvim'
    paq 'kosayoda/nvim-lightbulb'
    paq 'mfussenegger/nvim-jdtls'
    paq 'kabouzeid/nvim-lspinstall'
    -- Telescope
    paq 'nvim-lua/popup.nvim'
    paq 'nvim-lua/plenary.nvim'
    paq 'nvim-telescope/telescope.nvim'

    -- Debugging
    paq 'mfussenegger/nvim-dap'
    -- Autocomplete
    paq 'hrsh7th/nvim-compe'
    paq 'mattn/emmet-vim'
    paq 'hrsh7th/vim-vsnip'
    paq "rafamadriz/friendly-snippets"
    paq 'ChristianChiarulli/html-snippets'
    -- Treesitter
    paq {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}
    paq 'p00f/nvim-ts-rainbow'
    paq {'lukas-reineke/indent-blankline.nvim', branch = 'lua'}
    paq 'nvim-treesitter/playground'
    paq 'JoosepAlviste/nvim-ts-context-commentstring'
    paq 'windwp/nvim-ts-autotag'
    paq 'lewis6991/gitsigns.nvim'
    paq 'liuchengxu/vim-which-key'
    paq 'ChristianChiarulli/dashboard-nvim'
    paq 'windwp/nvim-autopairs'
    paq 'terrortylor/nvim-comment'
    -- Php
    paq 'phpactor/phpactor'
    -- Flutter
    paq 'thosakwe/vim-flutter'
    -- Dependency assistent
    paq 'akinsho/dependency-assist.nvim'
    paq 'kevinhwang91/nvim-bqf'

    -- Color
    paq 'christianchiarulli/nvcode-color-schemes.vim'
    paq 'norcalli/nvim-colorizer.lua'
    paq 'sheerun/vim-polyglot'
    -- Icons
    paq 'kyazdani42/nvim-web-devicons'
    paq 'ryanoasis/vim-devicons'
    -- Status Line and Bufferline
    paq 'glepnir/galaxyline.nvim'
    -- paq { 'glepnir/galaxyline.nvim', config = function() require'nv-galaxyline' end } -- inline fn alternative
    paq 'romgrk/barbar.nvim'
-- paq 'neovim/nvim-lspconfig'
-- paq 'nvim-lua/completion-nvim'
-- paq 'nvim-lua/lsp_extensions.nvim'
-- paq{'lervag/vimtex', opt=true}     -- Use braces when passing options
-- paq{'dracula/vim', as='dracula'}   -- Use `as` to alias a package name (here `vim`)
