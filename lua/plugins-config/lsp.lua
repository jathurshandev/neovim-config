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

-- Format on save
vim.api.nvim_create_autocmd("BufWritePre", {
  buffer = buffer,
  callback = function()
    vim.lsp.buf.format { async = false }
  end
})
