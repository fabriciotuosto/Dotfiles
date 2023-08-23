local cmp = require('cmp')
local luasnip = require("luasnip")
require("luasnip.loaders.from_vscode").lazy_load()
luasnip.config.setup({})
local lspkind = require('lspkind')
lspkind.init({
    mode = "symbol_text",
    preset = "default",
})
cmp.setup({
    snippet = {
        expand = function(args)
            luasnip.lsp_expand(args.body)
        end,
    },
    formatting = {
        format = lspkind.cmp_format({
            mode = 'symbol_text', -- show only symbol annotations
            maxwidth = 50, -- prevent the popup from showing more than provided characters (e.g 50 will not show more than 50 characters)
            ellipsis_char = '...', -- when popup menu exceed maxwidth, the truncated part would show ellipsis_char instead (must define maxwidth first)
            -- The function below will be called before any actual modifications from lspkind
            -- so that you can provide more controls on popup customization. (See [#30](https://github.com/onsails/lspkind-nvim/pull/30))
            menu = {
                buffer = "[buf]",
                nvim_lsp = "[LSP]",
                path = "[path]",
                luasnip = "[snip]"
            }
        })
    },
    sources = {
        { name = 'nvim_lsp'},
        { name = 'nvim_lsp_signature_help' },
        { name = 'treesitter'},
        { name = 'path'},
        { name = 'luasnip'},
        { name = 'buffer', keyword_length = 5},
    },
    mapping = cmp.mapping.preset.insert({
        ['C-m'] = cmp.mapping.complete(),
        ['<CR>'] = cmp.mapping.confirm({
            behavior = cmp.ConfirmBehavior.Replace,
            select = true,
        })
    }),
    sorting = {
        comparators = {
            cmp.config.compare.exact,
            cmp.config.compare.kind,
            cmp.config.compare.sort_text,
            cmp.config.compare.score,
            cmp.config.compare.locality,
            -- cmp.config.compare.length,
            -- cmp.config.compare.order,
        }
    },
    experimental = {
        ghost_text = true
    },
})
