--[[
  Common core config
]]

local core = vim.opt

-- Lines
core.number = true
core.relativenumber = true

-- Able to undo file after exit
core.undofile = true

-- Better split windows
core.splitbelow = true
core.splitright = true

-- Tab spacing
core.expandtab = true
core.tabstop = 2
core.shiftwidth = 0 -- defaults to tabstop for consitency
-- vim-sleuth can be used to determine automatically those values


