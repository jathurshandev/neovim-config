require("mason").setup()

require("mason-lspconfig").setup({
  ensure_installed = {
    "lua_ls",
    "csharp_ls",
    "gopls"
  }
})
