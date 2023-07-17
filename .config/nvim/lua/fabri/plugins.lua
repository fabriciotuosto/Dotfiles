return {
    {
        "catppuccin/nvim",
        priority=1000,
    },
    -- {
    --     "folke/tokyonight.nvim",
    --     priority=1000,
    -- },
    -- {
    --     "navarasu/onedark.nvim",
    --     priority=1000,
    --
    -- },
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
    },
    {
        "NeogitOrg/neogit",
        dependencies = "nvim-lua/plenary.nvim",
        lazy = false,
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
    {"mg979/vim-visual-multi", lazy = false},
    {
        "kylechui/nvim-surround",
        version = "*", -- Use for stability; omit to use `main` branch for the latest features
        event = "VeryLazy",
        config = function()
            require("nvim-surround").setup({})
        end,
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
    {
        "numToStr/Comment.nvim"
    },
    {
        "mfussenegger/nvim-dap",
    },
    {
        "rcarriga/nvim-dap-ui",
        dependencies = { "mfussenegger/nvim-dap" },
    },
    {"lewis6991/gitsigns.nvim"},
    {"rcarriga/nvim-notify"},
    {"simrat39/rust-tools.nvim"},
    {"j-hui/fidget.nvim", tag = "legacy"},
}
