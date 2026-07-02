local keybinds = {}
local keymap = vim.keymap.set

-- Leader key (space)
vim.g.mapleader = " "

-- Fzf keybinds
keybinds.fzf = {
  { "<Leader>f", "<CMD>Files<CR>", desc = "Search files" },
  { "<Leader>F", "<CMD>Rg<CR>", desc = "Search project" },
  { "<Leader>b", "<CMD>Buffers<CR>", desc = "Find buffers" },
}

keybinds.nvim_tree = {
  { "<Leader>tt", "<CMD>NvimTreeFocus<CR>", desc = "Focus current file in tree"},
  { "<Leader>tc", "<CMD>NvimTreeClose<CR>", desc = "Close file tree"}
}

keybinds.gitsigns = {}

-- Terminal mode
keymap('t', '<Leader><Esc>', '<C-\\><C-n>', { noremap = true, desc = "Escape from terminal mode" })

-- Normal mode
keymap('n', '<Leader>d', function() vim.diagnostic.open_float(nil, { focus = false, scope = 'cursor' }) end, { desc = 'Diagnostics under cursor' })

return keybinds
