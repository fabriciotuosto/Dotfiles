local lsp = require('lsp-zero').preset({})
local lspconfig = require('lspconfig')
lsp.on_attach(function(client, bufnr)
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

local get_servers = require('mason-lspconfig').get_installed_servers
for _, server_name in ipairs(get_servers()) do
  lspconfig[server_name].setup({
    capabilities = lsp_capabilities,
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
        {name = 'path'},
        {name = 'nvim_lsp'},
        {name = 'buffer', keyword_length = 3},
        {name = 'luasnip', keyword_length = 3},
    },
    mapping = cmp.mapping.preset.insert({
        ['<CR>'] = cmp.mapping.confirm({
            behavior = cmp.ConfirmBehavior.Replace,
            select = true,
        })
    })
})
