local lsp = require("user.lsp.handlers")

vim.lsp.config("gopls", {
  on_attach = lsp.on_attach,
  capabilities = lsp.capabilities,
})

vim.lsp.config("clangd", {
  on_attach = lsp.on_attach,
  capabilities = lsp.capabilities,
})

vim.lsp.config("lua_ls", {
  on_attach = lsp.on_attach,
  capabilities = lsp.capabilities,
})

vim.lsp.enable({ "gopls", "clangd", "lua_ls" })
