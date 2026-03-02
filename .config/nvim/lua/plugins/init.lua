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
    "coder/claudecode.nvim",
    dependencies = { "folke/snacks.nvim" },
    config = true,
    keys = {
      { "<leader>a", nil, desc = "AI/Claude Code" },
      { "<leader>ac", "<cmd>ClaudeCode<cr>", desc = "Toggle Claude" },
      { "<leader>af", "<cmd>ClaudeCodeFocus<cr>", desc = "Focus Claude" },
      { "<leader>ar", "<cmd>ClaudeCode --resume<cr>", desc = "Resume Claude" },
      { "<leader>aC", "<cmd>ClaudeCode --continue<cr>", desc = "Continue Claude" },
      { "<leader>am", "<cmd>ClaudeCodeSelectModel<cr>", desc = "Select Claude model" },
      { "<leader>ab", "<cmd>ClaudeCodeAdd %<cr>", desc = "Add current buffer" },
      { "<leader>as", "<cmd>ClaudeCodeSend<cr>", mode = "v", desc = "Send to Claude" },
      {
        "<leader>as",
        "<cmd>ClaudeCodeTreeAdd<cr>",
        desc = "Add file",
        ft = { "NvimTree", "neo-tree", "oil", "minifiles", "netrw" },
      },
      -- Diff management
      { "<leader>aa", "<cmd>ClaudeCodeDiffAccept<cr>", desc = "Accept diff" },
      { "<leader>ad", "<cmd>ClaudeCodeDiffDeny<cr>", desc = "Deny diff" },
    },
  }
  --[[ { ]]
  --[[   "k8s_schema_picker", ]]
  --[[   dir = "~/.config/nvim/lua/k8s_schema_picker/", -- local path ]]
  --[[   dependencies = { "nvim-telescope/telescope.nvim" }, ]]
  --[[   config = function() ]]
  --[[     vim.keymap.set("n", "<leader>ks", require("k8s_schema_picker").select_schema, ]]
  --[[       { desc = "Select Kubernetes YAML Schema" }) ]]
  --[[   end ]]
  --[[ }, ]]
}
