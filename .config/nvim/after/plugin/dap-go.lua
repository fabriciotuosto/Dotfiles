require("dap-go").setup({
    ft = "go"
})

vim.keymap.set("n", "<leader>tg", ":lua require('dap-go').debug_test()<CR>")
