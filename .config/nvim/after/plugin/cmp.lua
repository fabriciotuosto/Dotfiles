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
        format = function(_, vim_item)
            vim_item.kind = require("lspkind").presets.codicons[vim_item.kind]
             .. " "
             .. vim_item.kind
            return vim_item
        end,
    },
    sources = {
        { name = 'path'},
        { name = 'nvim_lsp', keyword_length= 1, priority = 1},
        { name = 'luasnip',  keyword_length = 2, priority = 5 },
        { name = 'buffer',   keyword_length = 3, priority = 8 },
    },
    mapping = cmp.mapping.preset.insert({
        ['C-Space'] = cmp.mapping.complete(),
        ['<CR>'] = cmp.mapping.confirm({
            behavior = cmp.ConfirmBehavior.Replace,
            select = true,
        })
    }),
    comparators = {
        cmp.config.compare.kind,
        cmp.config.compare.exact,
        cmp.config.compare.offset,
        cmp.config.compare.score, -- based on :  score = score + ((#sources - (source_index - 1)) * sorting.priority_weight)
        cmp.config.compare.sort_text,
        cmp.config.compare.recently_used,
        cmp.config.compare.order,
        cmp.config.compare.length,
    }
})
