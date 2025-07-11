require("nvim-treesitter.configs").setup({
  ensure_installed = {
    "lua", "c_sharp", "javascript", "markdown", "typescript",
  },
  auto_install = true,
  highlight = {
    enable = true, -- Runs `:h syntax` and tree-sitter
  }
})
