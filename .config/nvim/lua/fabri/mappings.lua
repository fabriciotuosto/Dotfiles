vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("v","<", ":< <CR>gv")
vim.keymap.set("v",">", ":> <CR>gv")
vim.keymap.set("v","<A-j>", ":m'>+1<CR>gv=gv")
vim.keymap.set("v","<A-k>", ":m-2<CR>gv=gv")

vim.keymap.set('n', "J", "mzJ`z")
vim.keymap.set('x', "<leader>p", "\"_dP")

vim.keymap.set('n', 'bn', ":bnext<CR>")
vim.keymap.set('n', 'bp', ":bprev<CR>")
vim.keymap.set('n', 'bx', ":bw<CR>")
