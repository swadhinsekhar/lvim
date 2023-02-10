vim.list_extend(lvim.lsp.automatic_configuration.skipped_servers, { "tailwindcss" })

local lsp_manager = require "lvim.lsp.manager"
lsp_manager.setup("tailwindcss") --, {
--  filetypes = { "html", "vue", "typescriptreact", "javascriptreact" , "markdown"},
--  on_init = require("lvim.lsp").common_on_init,
--  capabilities = require("lvim.lsp").common_capabilities(),
--})


-- aspnetcorerazor, astro, astro-markdown, blade, django-html, htmldjango, edge, eelixir, elixir, ejs, erb, eruby, gohtml, haml, handlebars, hbs, html, html-eex, heex, jade, leaf, liquid, markdown, mdx, mustache, njk, nunjucks, php, razor, slim, twig, css, less, postcss, sass, scss, stylus, sugarss, javascript, javascriptreact, reason, rescript, typescript, typescriptreact, vue, svelte

