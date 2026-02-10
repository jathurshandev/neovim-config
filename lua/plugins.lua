--[[
  Plugins are managed using lazy.nvim
]]

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
local keybinds = require("keybinds")

local plugins = {
  -- Theme
  {
    "Mofiqul/adwaita.nvim",
    priority = 200,
    lazy = false,
    config = function()
      vim.cmd("colorscheme adwaita")
    end,
  },

  -- Syntax highlighting
  {
    "nvim-treesitter/nvim-treesitter",
    branch = "master",
    build = ":TSUpdate",
    priority = 100,
    lazy = false,
  },

  -- LSP
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "williamboman/mason.nvim",            -- LSP Server
      "williamboman/mason-lspconfig.nvim",  -- Nvim lsp
    },
    priority = 110,
  },

  -- Autocomplete
  {
    'saghen/blink.cmp',
    version = '1.*',

    ---@module 'blink.cmp'
    ---@type blink.cmp.Config
    opts = {
      keymap = { preset = 'super-tab' },

      appearance = {
        nerd_font_variant = 'mono'
      },

      completion = { documentation = { auto_show = false } },

      sources = {
        default = { 'lsp', 'path', 'snippets', 'buffer' },
      },

      fuzzy = { implementation = "prefer_rust_with_warning" }
    },
    opts_extend = { "sources.default" },

    priority = 120
  },

  -- File explorer
  {
    "nvim-tree/nvim-tree.lua",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    keys = keybinds.nvim_tree,
    priority = 130,
  },

  -- Fuzzy finder
  {
    "https://github.com/junegunn/fzf.vim",
    dependencies = {
      "https://github.com/junegunn/fzf",
    },
    keys = keybinds.fzf,
    priority = 200,
  },

  -- Key binding helper (meh)
  --[[
  {
    "folke/which-key.nvim",
    priority = 300,
  },
  ]]
}

-- Install lazy.nvim if not present
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"http://github.com/folke/lazy.nvim.git",
		"--branch=stable",
		lazypath,
	})
end

-- Load lazy.nvim
vim.opt.rtp:prepend(lazypath)

-- Load plugins
require("lazy").setup(plugins)
