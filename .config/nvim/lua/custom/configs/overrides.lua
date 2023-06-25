
local M = {}

M.treesitter = {
  ensure_installed = {
    "vim",
    "lua",
    "html",
    "css",
    "javascript",
    "typescript",
    "tsx",
    "c",
    "markdown",
    "markdown_inline",
    "rust",
    "elixir",
    "python",
    "terraform",
    "bash",
    "diff",
    "git_config",
    "go",
    "json",
    "make",
    "r",
    "sql",
    "toml",
    "yaml",
    "cmake",
    "haskell",
    "ocaml",
  },
  indent = {
    enable = true,
    -- disable = {
    --   "python"
    -- },
  },
}

M.mason = {
  ensure_installed = {
    -- lua stuff
    "lua-language-server",
    "stylua",
    -- web dev stuff
    "css-lsp",
    "hml-lsp",
    "typescript-language-server",
    "deno",
    "prettier",
    -- c/cpp stuff
    "clangd",
    "clang-format",
    -- python
    "pyright",
    "mypy",
    "ruff",
    "black",
    -- elixr
    "elixir-ls",
    -- rust
    "rust-analyzer",
    -- DB
    "sqlls",
    -- Shells
    "beautysh",
    -- docker
    "dockerfile-language-server",
    "docker-compose-language-service",
    "terraform-ls",
    "gopls",
    "ocaml-lsp",
  },
}

-- git support in nvimtree
M.nvimtree = {
  git = {
    enable = false,
  },

  renderer = {
    highlight_git = true,
    icons = {
      show = {
        git = true,
      },
    },
  },
}

M.telescope = {
  defaults = {
    file_sorter = require("telescope.sorters").get_fzy_sorter,
    file_ignore_patterns = {
      "node_modules",
      "_dist",
      "build",
      ".git",
      ".idea",
      ".elixir_ls",
      ".github",
      "deps",
      "target",
      ".mypy_cache"
    },
    generic_sorter = require("telescope.sorters").get_fzy_sorter,
  },
  extensions_list = { "themes", "terms", "repo", "zoxide"},
}

return M
