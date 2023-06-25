
local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"

-- if you just want default config for the servers then put them in a table
local servers = {
    "clangd",
    "vimls",
    "docker_compose_language_service",
    "dockerls",
    "tsserver",
    "cssls",
    "jsonls",
    "html",
    "sqlls",
    "grammarly",
    "emmet_ls",
}

for _, lsp in ipairs(servers) do
    lspconfig[lsp].setup {
        on_attach = on_attach,
        capabilities = capabilities,
    }
end

--
lspconfig.elixirls.setup {
    cmd = { "/home/fabri/.elixirlsp/language_server.sh" },
    on_attach = on_attach,
    capabilities = capabilities,
    flags = {
        debounce_text_changes = 50,
    },
    elixirLs = {
        dialyzerEnabled = false,
        fetchDeps = false,
    },
}

lspconfig.pyright.setup {
    on_attach = on_attach,
    capabilities = capabilities,
    fileType = { "python" },
}

lspconfig.rust_analyzer.setup {
    on_attach = on_attach,
    capabilities = capabilities,
    root_dir = lspconfig.util.root_pattern "Cargo.toml",
    settings = {
        ["rust-analyzer"] = {
            cargo = {
                allFeatures = true,
            },
            diagnostics = {
                enable = false,
            },
        },
    },
}
