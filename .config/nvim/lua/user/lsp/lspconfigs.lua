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

vim.lsp.config("zls", {
  on_attach = lsp.on_attach,
  capabilities = lsp.capabilities,
  settings = {
    zls = {
      enable_build_on_save = true,
    }
  }
})

vim.lsp.enable({ "gopls", "clangd", "lua_ls", "zls" })
