local on_attach = require("user.lsp.handlers").on_attach_no_highlight
local capabilities = require("user.lsp.handlers").capabilities
local schemas = {
  kubernetes = "*.yaml",
  ["http://json.schemastore.org/github-workflow"] = ".github/workflows/*",
  ["http://json.schemastore.org/github-action"] = ".github/action.{yml,yaml}",
  ["http://json.schemastore.org/ansible-stable-2.9"] = "roles/tasks/*.{yml,yaml}",
  ["http://json.schemastore.org/prettierrc"] = ".prettierrc.{yml,yaml}",
  ["http://json.schemastore.org/kustomization"] = "kustomization.{yml,yaml}",
  ["http://json.schemastore.org/ansible-playbook"] = "*play*.{yml,yaml}",
  ["http://json.schemastore.org/chart"] = "Chart.{yml,yaml}",
  ["https://json.schemastore.org/dependabot-v2"] = ".github/dependabot.{yml,yaml}",
  ["https://json.schemastore.org/gitlab-ci"] = "*gitlab-ci*.{yml,yaml}",
  ["https://raw.githubusercontent.com/OAI/OpenAPI-Specification/main/schemas/v3.1/schema.json"] = "*api*.{yml,yaml}",
  ["https://raw.githubusercontent.com/compose-spec/compose-spec/master/schema/compose-spec.json"] =
  "*docker-compose*.{yml,yaml}",
  ["https://raw.githubusercontent.com/argoproj/argo-workflows/master/api/jsonschema/schema.json"] = "*flow*.{yml,yaml}",
  ["https://raw.githubusercontent.com/canonical/cloud-init/main/cloudinit/config/schemas/schema-cloud-config-v1.json"] = "*cloud_init.{yaml,yml}",
}

require("lspconfig").yamlls.setup {
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
