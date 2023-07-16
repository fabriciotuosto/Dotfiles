return {
    {
        "catppuccin/nvim",
        name = "catppuccin",
        priority = 1000,
        config = function()
            vim.cmd([[colorscheme catppuccin]])
        end
    },
    {
        'nvim-telescope/telescope.nvim', tag = '0.1.2',
        -- or                              , branch = '0.1.x',
        dependencies = { 'nvim-lua/plenary.nvim' },
        config = {
            defaults = {
                file_ignore_patterns = {
                    "node_modules",
                    "_dist",
                    "dist",
                    ".git",
                    ".idea",
                    ".elixir_ls",
                    ".github",
                    "deps",
                    "target",
                    ".mypy_cache"
                }
            }
        }
    },
    {
        "nvim-treesitter/nvim-treesitter",
        dependencies = {
            "nvim-treesitter/nvim-treesitter-textobjects"
        },
        build = ":TSUpdate"
    },
    {
        "lukas-reineke/indent-blankline.nvim",
        config = function()
            require("indent_blankline").setup {
                show_current_context = true,
            }
        end,
    },
    {
        "NeogitOrg/neogit",
        dependencies = "nvim-lua/plenary.nvim",
        lazy = false,
        config = function()
            require("neogit").setup {}
        end,
    },
    { "windwp/nvim-autopairs", event = "InsertEnter", opts = {} },
    {
        "mbbill/undotree",
        lazy = false,
    },
    {
        "christoomey/vim-tmux-navigator",
        lazy = false,
    },
    {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v2.x',
        dependencies = {
            -- LSP Support
            {'neovim/nvim-lspconfig'},             -- Required
            {
                'williamboman/mason.nvim',
                build = function()
                    pcall(vim.cmd, 'MasonUpdate')
                end
            },
            {'williamboman/mason-lspconfig.nvim'}, -- Optional
            -- Autocompletion
            {'hrsh7th/nvim-cmp'},     -- Required
            {'hrsh7th/cmp-nvim-lsp'}, -- Required
            {'L3MON4D3/LuaSnip'},     -- Required
            {'hrsh7th/cmp-buffer'},
            {'hrsh7th/cmp-path'},
            {'hrsh7th/cmp-cmdline'},
            {'rafamadriz/friendly-snippets'}
        },
    },
    {
      'nvim-lualine/lualine.nvim',
      dependencies = {
        { 'nvim-tree/nvim-web-devicons', opt = true }
      }
    },
    {"numToStr/Comment.nvim"},
    {
        "mfussenegger/nvim-dap",
    },
    {
        "rcarriga/nvim-dap-ui",
        dependencies = { "mfussenegger/nvim-dap" },
        config = function()
            local dap = require "dap"
            local dapui = require "dapui"
            dapui.setup()
            dap.listeners.after.event_initialized["dapui_config"] = function()
                dapui.open()
            end
            dap.listeners.before.event_terminated["dapui_config"] = function()
                dapui.close()
            end
        end,
    },
}
