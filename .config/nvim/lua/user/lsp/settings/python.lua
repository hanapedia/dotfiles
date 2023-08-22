local on_attach = require("user.lsp.handlers").on_attach
local capabilities = require("user.lsp.handlers").capabilities
require 'lspconfig'.pyright.setup {
  settings = {
    python = {
      analysis = {
        autoSearchPaths = true,
        useLibraryCodeForTypes = true
      },
      pythonPath = "./.venv/bin/python",
    },
  },
  on_attach = on_attach,
  capabilities = capabilities,
}
