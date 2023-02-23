local on_attach = require("user.lsp.handlers").on_attach_no_highlight
local capabilities = require("user.lsp.handlers").capabilities
local schemas = {
  -- ["https://json.schemastore.org/github-workflow.json"] = "/.github/workflows/*",
  -- ["../path/relative/to/file.yml"] = "/.github/workflows/*",
  -- ["/path/from/root/of/project"] = "/.github/workflows/*",
  --
  ["https://raw.githubusercontent.com/canonical/cloud-init/main/cloudinit/config/schemas/schema-cloud-config-v1.json"] = { "**/*cloud_init.yaml",
    "**/*cloud_init.yml" },
}

require("lspconfig").yamlls.setup{
  on_attach = on_attach,
  capabilities = capabilities,
  settings = {
    yaml = {
      format = {
        singleQuote = true,
      },
      schemas = schemas,
      schemaStore = {
        enable = false,
        url = '',
      },
    }
  }
}
