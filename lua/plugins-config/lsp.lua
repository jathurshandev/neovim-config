require("mason").setup()

require("mason-lspconfig").setup({
  ensure_installed = {
    "lua_ls",
    "omnisharp",
    "gopls",
    "marksman",
    "basedpyright",
    "bashls",
    "angularls",
    "tsc",
    "docker_language_server",
    "rnix",
  }
})
