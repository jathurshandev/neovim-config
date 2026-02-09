--[[
  Common core config
]]

local core = vim.opt
local configpath = vim.fn.stdpath('config') 

-- Lines
core.number = true
core.relativenumber = true

-- Able to undo file after exit
core.undofile = true
core.undodir = configpath .. '/undo//'

-- Better split windows
core.splitbelow = true
core.splitright = true

-- Tab spacing
core.expandtab = true
core.tabstop = 2
core.shiftwidth = 0 -- defaults to tabstop for consitency
-- vim-sleuth can be used to determine automatically those values
