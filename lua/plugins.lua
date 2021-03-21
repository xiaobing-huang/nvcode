--vim.cmd [[packadd packer.nvim]]

local execute = vim.api.nvim_command
local fn = vim.fn

local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
    execute('!git clone https://github.com/wbthomason/packer.nvim ' .. install_path)
    execute 'packadd packer.nvim'
end

vim.cmd 'autocmd BufWritePost plugins.lua PackerCompile' -- Auto compile when there are changes in plugins.lua

return require('packer').startup(function(use)
    -- Packer can manage itself as an optional plugin
    use 'wbthomason/packer.nvim'

    -- Information
    use {'nanotee/nvim-lua-guide', opt=true}

    -- Quality of life improvements
    use {'norcalli/nvim_utils', opt=true}

    -- LSP
    use {'neovim/nvim-lspconfig', opt = true}
    use {'glepnir/lspsaga.nvim', opt=true}
    use {'onsails/lspkind-nvim', opt=true}
    use {'kosayoda/nvim-lightbulb', opt=true}
    use {'mfussenegger/nvim-jdtls', opt=true}

    -- Debugging
    use {'mfussenegger/nvim-dap', opt=true}

    -- Autocomplete
    use {'hrsh7th/nvim-compe', opt=true}
    
    use {'christianchiarulli/emmet-vim', opt=true}
    use {'hrsh7th/vim-vsnip', opt=true}
    use {'xabikos/vscode-javascript', opt=true}
    use {'dsznajder/vscode-es7-javascript-react-snippets', opt=true}
    use {'golang/vscode-go', opt=true}
    use {'rust-lang/vscode-rust', opt=true}
    use {'ChristianChiarulli/html-snippets', opt=true}
    use {'ChristianChiarulli/java-snippets', opt=true}
    use {'ChristianChiarulli/python-snippets', opt=true}
    -- use 'cstrap/python-snippets'
    -- use 'ylcnfrht/vscode-python-snippet-pack'
    -- use 'SirVer/ultisnips'
    -- use 'norcalli/snippets.nvim'

    -- Treesitter
    use {'nvim-treesitter/nvim-treesitter', opt=true, run = ':TSUpdate'}
    use {'nvim-treesitter/nvim-treesitter-refactor', opt=true}
    use {'nvim-treesitter/playground', opt=true}
    use {'p00f/nvim-ts-rainbow', opt=true}

    -- Icons
    use {'kyazdani42/nvim-web-devicons', opt=true}
    use {'ryanoasis/vim-devicons', opt=true}

    -- Status Line and Bufferline
    use {'glepnir/galaxyline.nvim', opt=true}
    -- use {'akinsho/nvim-bufferline.lua', requires = 'kyazdani42/nvim-web-devicons'}
    use {'romgrk/barbar.nvim', opt=true}

    -- Telescope
    use {'nvim-lua/popup.nvim', opt=true}
    use {'nvim-lua/plenary.nvim', opt=true}
    use {'nvim-telescope/telescope.nvim', opt=true}
    use {'nvim-telescope/telescope-media-files.nvim', opt=true}

    -- Explorer
    use {'kyazdani42/nvim-tree.lua', opt=true}

    -- Color
    use {'christianchiarulli/nvcode-color-schemes.vim', opt=true}
    use {'norcalli/nvim-colorizer.lua', opt=true}

    -- Git
    use {'TimUntersberger/neogit', opt=true}
    use {'lewis6991/gitsigns.nvim', opt=true, requires = {'nvim-lua/plenary.nvim'}}
    use {'f-person/git-blame.nvim', opt=true}
    use {'tpope/vim-fugitive', opt=true}
    use {'tpope/vim-rhubarb', opt=true}

    -- Easily Create Gists
    use {'mattn/vim-gist', opt=true}
    use {'mattn/webapi-vim', opt=true}

    -- Webdev
    use {'windwp/nvim-ts-autotag', opt=true}
    use {'gennaro-tedesco/nvim-jqx', opt=true}
    use {'turbio/bracey.vim', opt=true}

    -- Registers
    use {'gennaro-tedesco/nvim-peekup', opt=true}

    -- General Plugins
    use {'windwp/nvim-autopairs', opt=true}
    use {'kevinhwang91/nvim-bqf', opt=true}
    use {'unblevable/quick-scope', opt=true}
    use {'airblade/vim-rooter', opt=true}
    use {'kevinhwang91/rnvimr', opt=true}
    use {'mhinz/vim-startify', opt=true}
    use {'metakirby5/codi.vim', opt=true}
    use {'psliwka/vim-smoothie', opt=true}
    use {'moll/vim-bbye', opt=true}
    use {'iamcco/markdown-preview.nvim', opt=true, run = 'cd app && npm install'}
    use {'liuchengxu/vim-which-key', opt=true}
    use {'voldikss/vim-floaterm', opt=true}
    use {'liuchengxu/vista.vim', opt=true}
    use {'terrortylor/nvim-comment', opt=true}
    use {'bfredl/nvim-miniyank', opt=true}
    use {'junegunn/goyo.vim', opt=true}
    use {'andymass/vim-matchup', opt=true}
    use {'phaazon/hop.nvim', opt=true}
    use {'tpope/vim-sleuth', opt=true}
    use {'sheerun/vim-polyglot', opt=true}

vim.cmd [[packadd barbar.nvim]]
vim.cmd [[packadd bracey.vim]]
vim.cmd [[packadd codi.vim]]
vim.cmd [[packadd emmet-vim]]
vim.cmd [[packadd galaxyline.nvim]]
vim.cmd [[packadd git-blame.nvim]]
vim.cmd [[packadd gitsigns.nvim]]
vim.cmd [[packadd goyo.vim]]
vim.cmd [[packadd hop.nvim]]
vim.cmd [[packadd html-snippets]]
vim.cmd [[packadd java-snippets]]
vim.cmd [[packadd lspkind-nvim]]
vim.cmd [[packadd lspsaga.nvim]]
vim.cmd [[packadd markdown-preview.nvim]]
vim.cmd [[packadd neogit]]
vim.cmd [[packadd nvcode-color-schemes.vim]]
vim.cmd [[packadd nvim-autopairs]]
vim.cmd [[packadd nvim-bqf]]
vim.cmd [[packadd nvim-colorizer.lua]]
vim.cmd [[packadd nvim-comment]]
vim.cmd [[packadd nvim-compe]]
vim.cmd [[packadd nvim-dap]]
vim.cmd [[packadd nvim-jdtls]]
vim.cmd [[packadd nvim-jqx]]
vim.cmd [[packadd nvim-lightbulb]]
vim.cmd [[packadd nvim-lspconfig]]
vim.cmd [[packadd nvim-lua-guide]]
vim.cmd [[packadd nvim-miniyank]]
vim.cmd [[packadd nvim-peekup]]
vim.cmd [[packadd nvim-tree.lua]]
vim.cmd [[packadd nvim-treesitter]]
vim.cmd [[packadd nvim-treesitter-refactor]]
vim.cmd [[packadd nvim-ts-autotag]]
vim.cmd [[packadd nvim-ts-rainbow]]
vim.cmd [[packadd nvim-web-devicons]]
vim.cmd [[packadd nvim_utils]]
-- vim.cmd [[packadd packer.nvim]]
vim.cmd [[packadd playground]]
vim.cmd [[packadd plenary.nvim]]
vim.cmd [[packadd popup.nvim]]
vim.cmd [[packadd python-snippets]]
vim.cmd [[packadd quick-scope]]
vim.cmd [[packadd rnvimr]]
vim.cmd [[packadd telescope-media-files.nvim]]
vim.cmd [[packadd telescope.nvim]]
vim.cmd [[packadd vim-bbye]]
vim.cmd [[packadd vim-devicons]]
vim.cmd [[packadd vim-floaterm]]
vim.cmd [[packadd vim-fugitive]]
vim.cmd [[packadd vim-gist]]
vim.cmd [[packadd vim-matchup]]
vim.cmd [[packadd vim-polyglot]]
vim.cmd [[packadd vim-rhubarb]]
vim.cmd [[packadd vim-rooter]]
vim.cmd [[packadd vim-sleuth]]
vim.cmd [[packadd vim-smoothie]]
vim.cmd [[packadd vim-startify]]
vim.cmd [[packadd vim-vsnip]]
vim.cmd [[packadd vim-which-key]]
vim.cmd [[packadd vista.vim]]
vim.cmd [[packadd vscode-es7-javascript-react-snippets]]
vim.cmd [[packadd vscode-go]]
vim.cmd [[packadd vscode-javascript]]
vim.cmd [[packadd vscode-rust]]
vim.cmd [[packadd webapi-vim]]

	-- TODO put this back when stable for indent lines
-- 	use { 'lukas-reineke/indent-blankline.nvim', branch = 'lua'}
-- 	vim.g.indent_blankline_space_char = ' '
-- 	vim.g.indent_blankline_buftype_exclude = {'terminal'}
-- 	vim.g.indent_blankline_filetype_exclude = {'help', 'startify'}
-- 	vim.g.indent_blankline_char = '▏'
-- 	vim.g.indent_blankline_use_treesitter=true
    -- use 'AndrewRadev/tagalong.vim'
    -- use 'alvan/vim-closetag'
    -- use 'RRethy/vim-illuminate'
    -- use 'b3nj5m1n/kommentary'
    -- use {
    --     'glacambre/firenvim',
    --     run = function()
    --         vim.fn['firenvim#install'](1)
    --     end
    -- }
end)


