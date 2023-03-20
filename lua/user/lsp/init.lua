require "user.lsp.languages.rust"
require "user.lsp.languages.go"
require "user.lsp.languages.python"
require "user.lsp.languages.js-ts"
require "user.lsp.languages.sh"
require "user.lsp.languages.emmet"
require "user.lsp.languages.css"
require "user.lsp.languages.json.lua"
require "user.lsp.languages.md.lua"

lvim.lsp.diagnostics.virtual_text = false

-- if you don't want all the parsers change this to a table of the ones you want
lvim.builtin.treesitter.ensure_installed = {
    "json",
    "c",
    "cpp",
    "go",
    "python",
    "javascript",
    "typescript",
    "tsx",
    "yaml",
    "html",
    "css",
    "markdown",
    "svelte",
    "graphql",
    "bash",
    "lua",
    "vim",
    "dockerfile",
    "gitignore",
}

-- vim.list_extend(lvim.lsp.automatic_configuration.skipped_servers, { "jdtls" })

local formatters = require "lvim.lsp.null-ls.formatters"
formatters.setup {
-- each formatter accepts a list of options identical to https://github.com/jose-elias-alvarez/null-ls.nvim/blob/main/doc/BUILTINS.md#Configuration
    { command = "google_java_format", filetypes = { "java" } },
    { command = "stylua", filetypes = { "lua" } },
    { command = "shfmt", filetypes = { "sh", "zsh" } },
    { command = "prettier", filetypes = { "css" , "json" , "markdown"} },
    { command = "clang_format", filetypes = { "cpp", "c"  } },
}

local linters = require "lvim.lsp.null-ls.linters"
linters.setup {
    { command = "eslint_d", filetypes = { "javascript", "json", "markdown" } },
    --{ command = "cpplint", filetypes = { "cpp", "c"  } },
    --{ command = "cppcheck", filetypes = { "cpp", "c"  } },
    --{ command = "clang_check", filetypes = { "cpp", "c"  } },
    -- { command = "refactoring", filetypes = { "go", "javascript", "lua", "python", "typescript"  } },
    { command = "golangci-lint", filetypes = { "go" } },
    { command = "cfn-lint", filetypes = { "yaml", "json" } },
}

local augroup = vim.api.nvim_create_augroup("LspFormatting", {})
lvim.lsp.on_attach_callback = function(client, bufnr)
    if client.supports_method("textDocument/formatting") then
        vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
        vim.api.nvim_create_autocmd("BufWritePre", {
            group = augroup,
            buffer = bufnr,
            callback = function()
                vim.lsp.buf.format({
                    filter = function()
                        --  only use null-ls for formatting instead of lsp server
                        return client.name == "null-ls"
                    end,
                    bufnr = bufnr,
                })
            end,
        })
    end
end

local lsp_manager = require "lvim.lsp.manager"
lsp_manager.setup("tailwindcss",  {
  filetypes = { "html", "vue", "typescriptreact", "javascriptreact" , "markdown", "json"},
--  on_init = require("lvim.lsp").common_on_init,
--  capabilities = require("lvim.lsp").common_capabilities(),
})

