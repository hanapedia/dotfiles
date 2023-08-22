require "user.options"
require "user.keymaps"
require "user.plugins"
require "user.colorscheme"
require "user.cmp"
require "user.lsp"
require "user.telescope"
require "user.treesitter"
require "user.autopairs"
require "user.comment"
require "user.gitsigns"
require "user.hop"

require "user.trouble"
require "user.lualine"
require "user.bufferline"

--[[ if vim.g.IDE then ]]
print("Opened in IDE mode")
require "user.nvim-tree"
require "user.ide-keymaps"
--[[ end ]]
