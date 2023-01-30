local schemas = {
  ["https://raw.githubusercontent.com/canonical/cloud-init/main/cloudinit/config/schemas/schema-cloud-config-v1.json"] = { "**/*cloud_init.yaml",
    "**/*cloud_init.yml" },
  ["https://raw.githubusercontent.com/compose-spec/compose-spec/master/schema/compose-spec.json"] = { "**/docker-compose.yml",
    "**/docker-compose.yaml",
    "**/docker-compose.*.yml",
    "**/docker-compose.*.yaml",
    "**/compose.yml",
    "**/compose.yaml",
    "**/compose.*.yml",
    "**/compose.*.yaml" }
}

local opts = {
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

return opts
