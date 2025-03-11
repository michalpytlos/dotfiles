-- setup mason
require("mason").setup()

-- setup mason-lspconfig
require("mason-lspconfig").setup({
    ensure_installed = { "lua_ls", "pylsp"},
})

-- setup language servers
require("lspconfig").lua_ls.setup {}
require("lspconfig").pylsp.setup {
-- Error codes: https://docs.astral.sh/ruff/rules/#pycodestyle-e-w
}
