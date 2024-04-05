-- setup mason
require("mason").setup()

-- setup mason-lspconfig
require("mason-lspconfig").setup({
    ensure_installed = { "lua_ls", "pylsp"},
})

-- setup language servers
require("lspconfig").lua_ls.setup {}
require("lspconfig").pylsp.setup {}
