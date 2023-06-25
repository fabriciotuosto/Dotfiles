---@type MappingsTable
local M = {}

M.general = {
  n = {
    ["<C-h>"] = {"<cmd> TmuxNavigateLeft<CR>", "Window Left"},
    ["<C-l>"] = {"<cmd> TmuxNavigateRight<CR>", "Window Right"},
    ["<C-j>"] = {"<cmd> TmuxNavigateDown<CR>", "Window Down"},
    ["<C-k>"] = {"<cmd> TmuxNavigateUp<CR>", "Window Up"},
    ["<C-o>"] = {"<cmd> NvimTreeToggle %<CR>", "Toogle NerdTree current"},
    ["<leader>fg"] = { "<cmd> Telescope git_files <CR>", "Find files" },
    -- Telescope LSP 

    ["<leader>ff"] = { "<cmd> Telescope find_files follow=true no_ignore=true hidden=true <CR>", "Find all" },
    ["<leader>ft"] = { "<cmd> Telescop treesitter <CR>", "Find treesitter" },
    ["<leader>gB"] = { "<cmd> Telescope git_branches <CR>", "Git Branches" },
    -- ["<leader>fs"] = { "<cmd> Telescope symbols <CR>", "Find symbols" },
    ["<leader>G"] = { "<cmd> Neogit <CR>", "Git" },
    ["<leader>fc"] = { "<cmd> Telescope commands <CR>", "Find commands" },
    ["<leader>fq"] = { "<cmd> Telescope quickfix <CR>", "Find quickfix" },
    ["<leader>fv"] = { "<cmd> Telescope vim_options <CR>", "Find Vim Options" },
    -- ["<leader>fk"] = { "<cmd> Telescope keymaps <CR>", "Find Keymaps" },
    ["<leader>fr"] = { "<cmd> Telescope lsp_references <CR>", "Find References" },
    ["<leader>fi"] = { "<cmd> Telescope lsp_incoming_calls <CR>", "Find Incoming calls" },
    -- ["<leader>fd"] = { "<cmd> Telescope lsp_definitions <CR>", "Find Definitions" },
    -- ["<leader>ft"] = { "<cmd> Telescope lsp_type_definitions <CR>", "Find Types" },
    -- ["<leader>vws"] = { "<cmd> Telescope lsp_workspace_symbols <CR>", "Find Workspace Symbols" },

    ["<leader>u"] = { "<cmd> UndotreeToggle <CR>", "Undo tree" },
    -- ["<leader>ca"] = {

    --   function()

    --     vim.lsp.buf.code_action()
    --   end,
    --   "LSP code action",
    -- },

    },
    v = {
        ["J"] = {":'<,'>move-2<cr>gv=gv", "Move Line down"},
        ["K"] = {":'<,'>move+2<cr>gv=gv", "Move Line up"},
    },
    x = {

        ["<leader>p"] = {"\"_dP"}
    },
}

-- more keybinds!

return M

-- =ap format paragraph
-- ca{ delete and in insert mode
-- ya{ yank arround
-- yi{ yank inside
-- di{ delete inside
-- da{ delete arround
-- C-q visual block

