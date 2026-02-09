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

-- Jump after character forward (similar to t but after character)
function JumpAfterForward()
  local char = vim.fn.nr2char(vim.fn.getchar())
  local keystrokes = vim.v.count1 .. "f" .. char .. "l"
  vim.fn.execute("normal! " .. keystrokes)
end

-- Jump before a character backward (similar to T but before character)
function JumpBeforeBackward()
  local char = vim.fn.nr2char(vim.fn.getchar())
  local keystrokes = vim.v.count1 .. "F" .. char .. "h"
  vim.fn.execute("normal! " .. keystrokes)
end

-- Normal mode
keymap("n", "m", JumpAfterForward, { noremap = true, silent = true, desc = "Jump after a character forward" })
keymap("n", "M", JumpBeforeBackward, { noremap = true, silent = true, desc = "Jump before a character backward" })
keymap("n", "<S-Tab>", '<<', { noremap = true, silent = true, desc = "Left indent" })
keymap("n", "<Tab>", '>>', { noremap = true, silent = true, desc = "Right indent" })

-- Visual mode
keymap("v", "m", JumpAfterForward, { noremap = true, silent = true, desc = "Jump after a character forward" })
keymap("v", "M", JumpBeforeBackward, { noremap = true, silent = true, desc = "Jump before a character backward" })
keymap("v", "<S-Tab>", '<', { noremap = true, silent = true, desc = "Left indent" })
keymap("v", "<Tab>", '>', { noremap = true, silent = true, desc = "Right indent" })

-- Terminal mode
keymap('t', '<Leader><Esc>', '<C-\\><C-n>', { noremap = true, desc = "Escape from terminal mode" })

return keybinds
