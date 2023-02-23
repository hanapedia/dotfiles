local on_attach = require("user.lsp.handlers").on_attach
local capabilities = require("user.lsp.handlers").capabilities

require("lspconfig").ansiblels.setup{
  on_attach = on_attach,
  capabilities = capabilities,
  settings = {
    ansible = {
      completion = {
        provideRedirectModules = false,
        provideModuleOptionAliases = false
      },
      ansible = {
        useFullyQualifiedCollectionNames = true,
        path = "ansible",
      },
      executionEnvironment = {
        enabled = false
      },
      python = {
        interpreterPath = "python"
      },
      validation = {
        enabled = true,
        lint = {
          enabled = true,
          path = "ansible-lint"
        }
      }
    }
  }
}
