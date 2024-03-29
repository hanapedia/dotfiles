local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim" -- This is where all the plugns live
if fn.empty(fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = fn.system {
    "git",
    "clone",
    "--depth",
    "1",
    "https://github.com/wbthomason/packer.nvim",
    install_path,
  }
  print "Installing packer close and reopen Neovim..."
  vim.cmd [[packadd packer.nvim]]
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]]

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end

-- Have packer use a popup window
packer.init {
  display = {
    open_fn = function()
      return require("packer.util").float { border = "rounded" }
    end,
  },
}

-- Install your plugins here
return packer.startup(function(use)
  -- My plugins here
  -- plugins are just github repositories
  use "wbthomason/packer.nvim" -- Have packer manage itself
  use "nvim-lua/popup.nvim" -- An implementation of the Popup API from vim in Neovim
  use "nvim-lua/plenary.nvim" -- Useful lua functions used by lots of plugins
  use "windwp/nvim-autopairs" -- Autopairs, integrates with cmp and treesitter
  use "numToStr/Comment.nvim" -- Easily comment stuff
  use "kyazdani42/nvim-web-devicons" -- icons used by many plugins
  use "moll/vim-bbye" -- plugin for closing all the buffers

  -- hop
  use {
    'phaazon/hop.nvim',
    branch = 'v2', -- optional but strongly recommended
  }

  -- harpoon
  --[[ use "ThePrimeagen/harpoon" ]]

  -- colorschemes
  use "hanapedia/mynord.nvim" -- fork of onenord

  -- Completions
  use "hrsh7th/nvim-cmp" -- The completion plugin
  use "hrsh7th/cmp-buffer" -- buffer completions
  use "hrsh7th/cmp-path" -- path completions
  use "hrsh7th/cmp-cmdline" -- cmdline completions
  use "saadparwaiz1/cmp_luasnip" -- snippet completions
  use "hrsh7th/cmp-nvim-lsp"
  use "hrsh7th/cmp-nvim-lua"

  -- Snippets
  use "L3MON4D3/LuaSnip" --snippet engine
  use "rafamadriz/friendly-snippets" -- a bunch of snippets to use

  -- LSP 
  use "neovim/nvim-lspconfig" -- enable LSP
  use "williamboman/mason.nvim"
  use "williamboman/mason-lspconfig.nvim"
  use "jose-elias-alvarez/null-ls.nvim" -- linting and formatting
  use "nvim-lua/lsp-status.nvim" -- for showing status on lualine

  -- trouble
  use {
    "folke/trouble.nvim",
    requires = "kyazdani42/nvim-web-devicons",
    --[[ config = function() ]]
    --[[   require("trouble").setup { ]]
    --[[     -- your configuration comes here ]]
    --[[     -- or leave it empty to use the default settings ]]
    --[[     -- refer to the configuration section below ]]
    --[[   } ]]
    --[[ end ]]
  }

  -- Telescope
  use "nvim-telescope/telescope.nvim"

  -- treesitter
  use {
    "nvim-treesitter/nvim-treesitter",
    run = ":TSUpdate",
  }
  use "JoosepAlviste/nvim-ts-context-commentstring" -- context aware commenting
  use 'nvim-treesitter/nvim-treesitter-context'

  -- Gitsigns
  use "lewis6991/gitsigns.nvim"

  -- UIs 
  use "nvim-lualine/lualine.nvim" -- lualine
  use "kyazdani42/nvim-tree.lua" -- nvim tree
  use "akinsho/bufferline.nvim" -- bufferline

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if PACKER_BOOTSTRAP then
    require("packer").sync()
  end
end)
