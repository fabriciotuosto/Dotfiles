local lspconfig = require('lspconfig')
local util = require("lspconfig/util")

lspconfig.gopls.setup {
    cmd = {"gopls"},
    filetypes = {"go", "gomod", "gowork", "gotmpl"},
    root_dir = util.root_pattern("go.work", "go.mod"),
    settings = {
        gopls = {
            completeUnimported = true,
            usePlaceHolders = true,
            analyses = {
                unusedparams = true,
            }
        },
    },
}
