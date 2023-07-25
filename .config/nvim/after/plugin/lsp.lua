local lsp = require('lsp-zero').preset({})
local lspconfig = require('lspconfig')
require('mason').setup()
require('mason-lspconfig').setup({
    ensure_installed = {
        'rust_analyzer',
        "clangd",
        'marksman',
        'cssls',
        'awk_ls',
        'cmake',
        'jsonls',
        'angularls',
        'clangd',
        'denols',
        'dockerls',
        'docker_compose_language_service',
        'elixirls',
        'emmet_ls',
        'html',
        'lua_ls',
        'tsserver',
        "pyright",
        "sqlls",
        "terraformls",
        "vimls",
        -- 'beautysh',
        -- 'prettierd',
        -- 'mypy',
        -- 'black',
        -- 'clang-format',
        -- "jq-lsp",
        -- "gopls",
        -- "ocaml-lsp",
    }
})
lsp.on_attach(function(_, bufnr)
    lsp.default_keymaps({buffer = bufnr})
end)

-- (Optional) Configure lua language server for neovim
lspconfig.lua_ls.setup(lsp.nvim_lua_ls())
local capabilities = vim.lsp.protocol.make_client_capabilities()
local lsp_capabilities = require('cmp_nvim_lsp').default_capabilities(capabilities)

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

lsp.setup()

