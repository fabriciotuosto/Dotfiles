local lspconfig = require('lspconfig')

lspconfig.denols.setup({
    root_dir = lspconfig.util.root_pattern("deno.json", "deno.jsonc")
})

local function organize_imports()
	local params = {
		command = "_typescript.organizeImports",
		arguments = {vim.api.nvim_buf_get_name(0)}
	}
	vim.lsp.buf.execute_command(params)
end

lspconfig.tsserver.setup({
    root_dir = lspconfig.util.root_pattern("package.json", "tsconfig.json", "jsconfig.json"),
	init_options = {
		preferences = {
			disableSuggestions = true,
		}
	},
	commands = {
		OrganizeImports = {
			organize_imports,
			description = "Organize Imports"
		}
	}
})
