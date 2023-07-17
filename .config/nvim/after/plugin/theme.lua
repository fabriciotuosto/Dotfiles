require("catppuccin").setup({
    integrations = {
        cmp = true,
        gitsigns = true,
        nvimtree = true,
        treesitter = true,
        notify = true,
        mini = false,
        dap = {
            enabled = true,
            enable_ui = true,
        }
    }
})
-- require("onedark").setup({
--     style="warm"
-- })
-- require('onedark').load()
-- colorscheme tokyonight
-- " There are also colorschemes for the different styles.
-- colorscheme tokyonight-night
-- colorscheme tokyonight-storm
-- colorscheme tokyonight-day
-- colorscheme tokyonight-moon

vim.cmd([[colorscheme catppuccin-mocha]])
