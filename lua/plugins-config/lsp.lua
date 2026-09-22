require("mason").setup()

require("mason-lspconfig").setup({
  ensure_installed = {
    "lua_ls",
    "omnisharp",
    "gopls",
    "marksman",
    "basedpyright",
    "bashls",
    "angular-language-server"
  }
})
