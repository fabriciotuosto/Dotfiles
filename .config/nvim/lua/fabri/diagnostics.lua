---------------------------------
-- Floating diagnostics message
---------------------------------
vim.diagnostic.config({
  float = { source = "always", border = border },
  virtual_text = false,
  update_in_insert = false,
  signs = true,
})

---------------------------------
-- Auto commands
---------------------------------
-- vim.cmd([[ autocmd! CursorHold,CursorHoldI * lua vim.diagnostic.open_float(nil, {focus=false})]])
vim.cmd([[ autocmd! CursorHold * lua vim.diagnostic.open_float(nil, {focus=false})]])
