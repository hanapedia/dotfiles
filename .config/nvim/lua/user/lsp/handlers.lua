local M = {}

-- 1. Capabilities (cmp integration)
M.capabilities = require("cmp_nvim_lsp").default_capabilities()

-- 2. Minimal on_attach
function M.on_attach(client, bufnr)
  -- Disable formatting where you have a dedicated formatter
  if client.name == "tsserver" then
    client.server_capabilities.documentFormattingProvider = false
  end

  local map = function(mode, lhs, rhs)
    vim.keymap.set(mode, lhs, rhs, { buffer = bufnr, silent = true })
  end

  map("n", "K", vim.lsp.buf.hover)
  map("n", "gd", vim.lsp.buf.definition)
  map("n", "gr", vim.lsp.buf.references)
  map("n", "<leader>rn", vim.lsp.buf.rename)
  map("n", "<C-k>", vim.lsp.buf.signature_help)
  map("n", "<leader>s", function()
    vim.lsp.buf.format({ async = true })
  end)
  map("n", "gk", function()
    vim.diagnostic.goto_prev({ border = "rounded" })
  end)
  map("n", "gk", function()
    vim.diagnostic.goto_next({ border = "rounded" })
  end)
end

return M
