require('lsp-progress').setup({})

require('lualine').setup({
    options = { theme  = "onedark"},
    sections = {
        lualine_c = {
            "require('lsp-progress').progress()",
        }
    }
})

vim.api.nvim_create_augroup("lualine_augroup", { clear = true })
vim.api.nvim_create_autocmd("User LspProgressStatusUpdated", {
    group = "lualine_augroup",
    callback = require("lualine").refresh,
})
