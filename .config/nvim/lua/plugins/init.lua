return {
  -- Core dependencies
  { "nvim-lua/popup.nvim", lazy = false },
  { "nvim-lua/plenary.nvim", lazy = false },

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
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "williamboman/mason.nvim",
      "williamboman/mason-lspconfig.nvim",
    },
    config = function()
      require("user.lsp")  -- no need to call user.lsp.mason separately
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
    lazy = false, -- load this before UI as directory is opened most of the time
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
  {
    "olimorris/codecompanion.nvim",
    opts = {},
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-treesitter/nvim-treesitter",
      "ravitemer/mcphub.nvim",
    },
    config = function()
      require("user.codecompanion")
    end,
  },
  {
    "github/copilot.vim",
    cmd = "Copilot",
    init = function()
      -- Disable all built-in mappings and features of copilot.vim
      vim.g.copilot_no_tab_map = true
      vim.g.copilot_assume_mapped = true
      vim.g.copilot_tab_fallback = ""
      vim.g.copilot_enabled = false -- disables completion
    end,
  },
}
