local opt = vim.opt
local g = vim.g
local config = require("core.utils").load_config()

opt.laststatus = 3 -- global statusline
opt.showmode = false

opt.clipboard = "unnamedplus"
opt.cursorline = true
opt.clipboard = "unnamedplus"
opt.cursorline = true

-- Indenting
opt.expandtab = true
opt.shiftwidth = 4
opt.smartindent = true
opt.tabstop = 4
opt.softtabstop = 4

-- Numbers
opt.number = true
opt.numberwidth = 2
opt.ruler = false



opt.title=true
opt.list=true
-- opt.listchars=tab:>
opt.scrolloff=8
opt.sidescrolloff=8

