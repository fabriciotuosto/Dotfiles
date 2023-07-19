local lsp = require('lsp-zero').preset({})
local lspconfig = require('lspconfig')
lsp.on_attach(function(_, bufnr)
    lsp.default_keymaps({buffer = bufnr})
end)

-- (Optional) Configure lua language server for neovim
lspconfig.lua_ls.setup(lsp.nvim_lua_ls())
local capabilities = vim.lsp.protocol.make_client_capabilities()
local lsp_capabilities = require('cmp_nvim_lsp').default_capabilities(capabilities)

lsp.ensure_installed({
    'rust_analyzer',
    -- "typescript-language-server",
    -- "prettier",
    "clangd",
    -- "clang-format",
    -- "lua-language-server",
    -- "pyright",
    -- "mypy",
    -- "elixir-ls",
    -- "sqlls",
    -- "beautysh",
    -- "dockerfile-language-server",
    -- "docker-compose-language-service",
    -- "gopls",
    -- "ocaml-lsp",
})
lsp.on_attach(function(_, bufnr)
    lsp.default_keymaps({buffer = bufnr})
    vim.keymap.set('n', 'gd', vim.lsp.buf.definition)
    vim.keymap.set('n', '<leader>R', '<cmd>lua vim.lsp.buf.rename()<cr>')
    vim.keymap.set('n', '<leader>ca', '<cmd>lua vim.lsp.buf.code_action()<cr>')
    vim.keymap.set('n', '<leader>vd', '<cmd>lua vim.diagnostic.open_float()<cr>')
    vim.keymap.set({'n', 'x'}, '<leader>mf', '<cmd>lua vim.lsp.buf.format({async = true})<cr>')
    vim.keymap.set('n', 'gr', '<cmd>Telescope lsp_references<cr>', {buffer = true})
end)

local on_attach = lsp.on_attach
local get_servers = require('mason-lspconfig').get_installed_servers
for _, server_name in ipairs(get_servers()) do
    lspconfig[server_name].setup({
        capabilities = lsp_capabilities,
        on_attach=on_attach,
    })
end

lspconfig.elixirls.setup {
    cmd = { "/home/fabri/.elixir-ls/language_server.sh"},
    -- on_attach = on_attach,
    capabilities = capabilities,
    flags = {
        debounce_text_changes = 50,
    },
    elixirLs = {
        dialyzerEnabled = false,
        fetchDeps = false,
    },
}

lsp.setup()


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
    sources = {
        {name = 'path', priority = 8},
        {name = 'nvim_lsp', priority = 9},
        {name = 'buffer', keyword_length = 3, priority = 7},
        {name = 'luasnip', keyword_length = 3, priority = 6},
    },
    mapping = cmp.mapping.preset.insert({
        ['<CR>'] = cmp.mapping.confirm({
            behavior = cmp.ConfirmBehavior.Replace,
            select = true,
        })
    })
})
