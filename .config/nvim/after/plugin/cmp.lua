local cmp = require('cmp')
local luasnip = require("luasnip")
require("luasnip.loaders.from_vscode").lazy_load()
luasnip.config.setup({})
cmp.setup({
    snippet = {
        expand = function(args)
            luasnip.lsp_expand(args.body)
        end,
    },
    -- formatting = {
    --     format = lspkind.cmp_format({
    --         mode = 'symbol',
    --         maxwidth = 50,
    --         ellipsis_char = "...",
    --         before = function(entry, vim_item)
    --             return vim_item
    --         end,
    --     }),
    -- },
    sources = {
        { name = 'path',     priority = 8 },
        { name = 'nvim_lsp', priority = 9 },
        { name = 'buffer',   keyword_length = 3, priority = 7 },
        { name = 'luasnip',  keyword_length = 3, priority = 6 },
    },
    mapping = cmp.mapping.preset.insert({
        ['<CR>'] = cmp.mapping.confirm({
            behavior = cmp.ConfirmBehavior.Replace,
            select = true,
        })
    })
})
