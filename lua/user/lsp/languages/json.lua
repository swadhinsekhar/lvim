local formatters = require "lvim.lsp.null-ls.formatters"
formatters.setup {
  { command = "prettier", filetypes = { "json", "markdown" } },
}
local diagnostics = require "lvim.lsp.null-ls.diagnostics"
diagnostics.setup {
  { command = "jsonlint", filetypes = { "json" , "markdown"} },
}
vim.list_extend(lvim.lsp.automatic_configuration.skipped_servers, { "jsonls" })

local lsp_manager = require "lvim.lsp.manager"
lsp_manager.setup("jsonls", {
  filetypes = { "json", "yaml" },
  on_init = require("lvim.lsp").common_on_init,
  capabilities = require("lvim.lsp").common_capabilities(),
})
