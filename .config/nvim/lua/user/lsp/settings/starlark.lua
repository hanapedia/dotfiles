local on_attach = require("user.lsp.handlers").on_attach
local capabilities = require("user.lsp.handlers").capabilities

require("lspconfig").buck2.setup {
  on_attach = on_attach,
  capabilities = capabilities,
}
