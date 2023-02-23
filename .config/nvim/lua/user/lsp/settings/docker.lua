local on_attach = require("user.lsp.handlers").on_attach
local capabilities = require("user.lsp.handlers").capabilities
require("lspconfig").docker_compose_language_service.setup{
  on_attach = on_attach,
  capabilities = capabilities,
}
require("lspconfig").dockerls.setup{
  on_attach = on_attach,
  capabilities = capabilities,
}
