local status_ok, nvim_tree = pcall(require, "nvim-tree")
if not status_ok then
  return
end

local config_status_ok, nvim_tree_config = pcall(require, "nvim-tree.config")
if not config_status_ok then
  return
end

local tree_cb = nvim_tree_config.nvim_tree_callback

local keymaps = { -- BEGIN_DEFAULT_MAPPINGS
  { key = "l", action = "edit" },
  { key = "<C-e>", action = "edit_in_place" },
  { key = "O", action = "edit_no_picker" },
  { key = { "<C-]>", "<2-RightMouse>" }, action = "cd" },
  { key = "<C-v>", action = "vsplit" },
  { key = "<C-x>", action = "split" },
  { key = "<C-t>", action = "tabnew" },
  { key = "<", action = "prev_sibling" },
  { key = ">", action = "next_sibling" },
  { key = "P", action = "parent_node" },
  { key = "h", action = "close_node" },
  { key = "<Tab>", action = "preview" },
  { key = "K", action = "first_sibling" },
  { key = "J", action = "last_sibling" },
  { key = "C", action = "toggle_git_clean" },
  { key = "I", action = "toggle_git_ignored" },
  { key = "H", action = "toggle_dotfiles" },
  { key = "B", action = "toggle_no_buffer" },
  { key = "U", action = "toggle_custom" },
  { key = "R", action = "refresh" },
  { key = "a", action = "create" },
  { key = "d", action = "remove" },
  { key = "D", action = "trash" },
  { key = "r", action = "rename" },
  { key = "<C-r>", action = "full_rename" },
  { key = "x", action = "cut" },
  { key = "c", action = "copy" },
  { key = "p", action = "paste" },
  { key = "y", action = "copy_name" },
  { key = "Y", action = "copy_path" },
  { key = "gy", action = "copy_absolute_path" },
  { key = "gk", action = "prev_diag_item" },
  { key = "[c", action = "prev_git_item" },
  { key = "gj", action = "next_diag_item" },
  { key = "]c", action = "next_git_item" },
  { key = "u", action = "dir_up" },
  { key = "o", action = "system_open" },
  { key = "f", action = "live_filter" },
  { key = "F", action = "clear_live_filter" },
  { key = "q", action = "close" },
  { key = "W", action = "collapse_all" },
  { key = "E", action = "expand_all" },
  { key = "S", action = "search_node" },
  { key = ".", action = "run_file_command" },
  { key = "<C-k>", action = "toggle_file_info" },
  { key = "g?", action = "toggle_help" },
  { key = "m", action = "toggle_mark" },
  { key = "bmv", action = "bulk_move" },
} -- END_DEFAULT_MAPPINGS

nvim_tree.setup {
  disable_netrw = true,
  hijack_netrw = true,
  open_on_setup = true,
  ignore_ft_on_setup = {
    "startify",
    "dashboard",
    "alpha",
  },
  open_on_tab = false,
  hijack_cursor = false,
  update_cwd = true,
  sort_by = "extension",
  -- update_to_buf_dir = {
  --   enable = true,
  --   auto_open = true,
  -- },
  diagnostics = {
    enable = true,
    icons = {
      hint = "",
      info = "",
      warning = "",
      error = "",
    },
  },
  update_focused_file = {
    enable = true,
    update_cwd = true,
    ignore_list = {},
  },
  git = {
    enable = true,
    ignore = false,
    timeout = 500,
  },
  view = {
    width = 50,
    -- height = 30,
    adaptive_size = false,
    hide_root_folder = false,
    side = "right",
    -- auto_resize = true,
    mappings = {
      custom_only = true,
      list = keymaps,
    },
    number = false,
    relativenumber = false,
    float = {
      enable = false,
      quit_on_focus_loss = true,
      open_win_config = {
        relative = "editor",
        border = "rounded",
        width = 50,
        height = 30,
        row = 0.5,
        col = 0.5,
      },
    }
  },
  remove_keymaps = { "s" },
  renderer = {
    indent_markers = {
      enable = true,
      icons = {
        corner = "└ ",
        edge = "│ ",
        item = "│ ",
        none = "  ",
      },
    },
    icons = {
      glyphs = {
        default = "",
        symlink = "",
        git = {
          unstaged = "",
          staged = "S",
          unmerged = "",
          renamed = "➜",
          deleted = "",
          untracked = "U",
          ignored = "I",
        },
        folder = {
          default = "",
          open = "",
          empty = "",
          empty_open = "",
          symlink = "",
        },
      },
    },
  },
  -- quit_on_open = 0,
  -- git_hl = 1,
  -- disable_window_picker = 0,
  -- root_folder_modifier = ":t",
  -- show_icons = {
  --   git = 1,
  --   folders = 1,
  --   files = 1,
  --   folder_arrows = 1,
  --   tree_width = 30,
  -- },
}
