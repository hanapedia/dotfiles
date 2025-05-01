return {
  -- Core dependencies
  { "nvim-lua/popup.nvim" },
  { "nvim-lua/plenary.nvim" },

  -- Self-management (optional, no longer needed with lazy.nvim)
  -- { "folke/lazy.nvim", import = "lazy" },

  -- Autopairs
  {
    "windwp/nvim-autopairs",
    config = function()
      require("user.autopairs")
    end,
  },

  -- Commenting
  {
    "numToStr/Comment.nvim",
    config = function()
      require("user.comment")
    end,
  },

  -- Devicons
  { "kyazdani42/nvim-web-devicons" },

  -- Buffer closing
  { "moll/vim-bbye" },

  -- colorscheme
  {
    "hanapedia/mynord.nvim",
    lazy = false, -- colorschemes usually load eagerly
    priority = 1000, -- load early
    config = function()
      vim.cmd("colorscheme mynord")
    end,
  },

  -- Completion
  { "hrsh7th/nvim-cmp", config = function() require("user.cmp") end },
  { "hrsh7th/cmp-buffer" },
  { "hrsh7th/cmp-path" },
  { "hrsh7th/cmp-cmdline" },
  { "saadparwaiz1/cmp_luasnip" },
  { "hrsh7th/cmp-nvim-lsp" },
  { "hrsh7th/cmp-nvim-lua" },

  -- Snippets
  { "L3MON4D3/LuaSnip" },
  { "rafamadriz/friendly-snippets" },

  -- LSP and related
  { "neovim/nvim-lspconfig", config = function() require("user.lsp") end },
  {
    "williamboman/mason.nvim",
    dependencies = {
      "williamboman/mason-lspconfig.nvim",
    },
    config = function()
      require("user.lsp.mason")  -- this file will set up both mason and mason-lspconfig
    end,
  },
  { "nvim-lua/lsp-status.nvim" },

  -- trouble.nvim
  {
    "folke/trouble.nvim",
    dependencies = { "kyazdani42/nvim-web-devicons" },
    config = function()
      require("user.trouble")
    end,
  },

  -- Telescope
  {
    "nvim-telescope/telescope.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      require("user.telescope")
    end,
  },

  -- Treesitter
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
      require("user.treesitter")
    end,
  },
  { "JoosepAlviste/nvim-ts-context-commentstring" },
  { "nvim-treesitter/nvim-treesitter-context" },

  -- Git signs
  {
    "lewis6991/gitsigns.nvim",
    config = function()
      require("user.gitsigns")
    end,
  },

  -- UI
  {
    "nvim-lualine/lualine.nvim",
    config = function()
      require("user.lualine")
    end,
  },
  {
    "kyazdani42/nvim-tree.lua",
    config = function()
      require("user.nvim-tree")
    end,
  },
  {
    "akinsho/bufferline.nvim",
    config = function()
      require("user.bufferline")
    end,
  },
}
