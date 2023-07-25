local elixir = require("elixir")
local elixirls = require("elixir.elixirls")

elixir.setup {
  nextls = {
    cmd = "/home/fabri/.nextls/nextls", -- path to the executable. mutually exclusive with `port`
  },
  -- elixirls = {
  --   cmd = "/home/fabri/.elixir-ls/language_server.sh",
  --   settings = elixirls.settings {
  --
  --     dialyzerEnabled = true,
  --     fetchDeps = false,
  --     enableTestLenses = false,
  --     suggestSpecs = false,
  --
  --   },
  --   -- on_attach = function(client, bufnr)
  --   --   vim.keymap.set("n", "<space>fp", ":ElixirFromPipe<cr>", { buffer = true, noremap = true })
  --   --   vim.keymap.set("n", "<space>tp", ":ElixirToPipe<cr>", { buffer = true, noremap = true })
  --   --   vim.keymap.set("v", "<space>em", ":ElixirExpandMacro<cr>", { buffer = true, noremap = true })
  --   -- end
  -- }
}
