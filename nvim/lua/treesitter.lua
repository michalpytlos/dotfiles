-- Syntax highlighting
--
-- "c", "lua", "vim", "vimdoc" and "query" parsers should always be installed
-- Neovim bundles its own parsers but they can be incompatible with nvim-treesitter.
-- The solution is to always install the required parsers via nvim-treesitter.
-- https://github.com/nvim-treesitter/nvim-treesitter/issues/3970#issuecomment-1377126359

require('nvim-treesitter.configs').setup {
  ensure_installed = {
    "c",
    "lua",
    "vim",
    "vimdoc",
    "query",
    "python",
    "bash",
    "sql",
    "yaml",
    "toml",
    "json",
    "dockerfile",
    "markdown",
    "markdown_inline",
  },
  highlight = { enable = true },
  indent = { enable = true }
}
