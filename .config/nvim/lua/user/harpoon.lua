local harpoon = require("harpoon")

harpoon.setup({
  global_settings = {
    -- sets the marks upon calling `toggle` on the ui, instead of require `:w`.
    save_on_toggle = false,

    -- saves the harpoon file upon every change. disabling is unrecommended.
    save_on_change = true,

    -- sets harpoon to run the command immediately as it's passed to the terminal when calling `sendCommand`.
    enter_on_sendcmd = false,

    -- closes any tmux windows harpoon that harpoon creates when you close Neovim.
    tmux_autoclose_windows = false,

    -- filetypes that you want to prevent from adding to the harpoon list menu.
    excluded_filetypes = { "harpoon" },

    -- set marks specific to each git branch inside git repository
    mark_branch = false,
  },
  menu = {
      relative = "editor",
      border = "double",
      width = vim.api.nvim_win_get_width(0) - 20,
      height = vim.api.nvim_win_get_height(0) - 50,
  }
})

local keymap = vim.keymap.set
local opts = { noremap = true, silent = true }

keymap("n", "<leader>n", "<cmd>lua require('harpoon.mark').add_file()<CR>", opts)
keymap("n", "<leader>h", "<cmd>lua require('harpoon.ui').toggle_quick_menu()<CR>", opts)
keymap("n", "<leader>j", "<cmd>lua require('harpoon.ui').nav_next()<CR>", opts)
keymap("n", "<leader>k", "<cmd>lua require('harpoon.ui').nav_next()<CR>", opts)

keymap("n", "<leader>1", "<cmd>lua require('harpoon.ui').nav_file(1)<CR>", opts)
keymap("n", "<leader>2", "<cmd>lua require('harpoon.ui').nav_file(2)<CR>", opts)
keymap("n", "<leader>3", "<cmd>lua require('harpoon.ui').nav_file(3)<CR>", opts)

keymap("n", "<leader>4", "<cmd>lua require('harpoon.tmux').gotoTerminal(1)<CR>", opts)
keymap("n", "<leader>5", "<cmd>lua require('harpoon.tmux').gotoTerminal(2)<CR>", opts)
keymap("n", "<leader>4", "<cmd>lua require('harpoon.tmux').gotoTerminal(3)<CR>", opts)

