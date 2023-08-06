vim.opt.clipboard = "unnamedplus"
vim.opt.cursorline = true
vim.opt.number = true
vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.smartindent = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.scrolloff = 8
vim.opt.sidescrolloff = 8
vim.opt.wrap = false
vim.opt.smartindent = true

vim.opt.swapfile = false
vim.opt.backup = false

vim.opt.hlsearch = false
vim.opt.incsearch = true
vim.opt.termguicolors = true
vim.o.completeopt = "menuone,noselect,preview"
vim.opt.updatetime = 100
vim.g.mapleader = " "

vim.opt.hidden = true
vim.opt.list = true
vim.opt.cmdheight = 0
require("fabri.mappings")
require("fabri.lazy")
require("fabri.diagnostics")
