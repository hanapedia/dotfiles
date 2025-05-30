local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
	return
end

-- require("user.lsp.lsp-installer")
require("user.lsp.handlers").setup()
require("user.lsp.lspconfigs")

require("mason").setup {
  ui = {
    icons = {
      package_installed = "✓"
    }
  }
}

require("mason-lspconfig").setup {
  automatic_enable = {
      exclude = {
          "gopls"
      }
  }
}
