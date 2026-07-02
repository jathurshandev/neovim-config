require("mason").setup()

require("mason-lspconfig").setup({
  ensure_installed = {
    "lua_ls",
    "omnisharp",
    "gopls",
    "deno",
    "rnix-lsp",
    "marksman",
    "basedpyright",
  }
})
