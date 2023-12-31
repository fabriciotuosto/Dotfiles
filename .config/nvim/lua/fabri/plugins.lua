return {
    { "nvim-lua/plenary.nvim" },
    {
        "catppuccin/nvim",
        priority = 1000,
    },
    {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.2',
        -- or                              , branch = '0.1.x',
        dependencies = { 'nvim-lua/plenary.nvim' },
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
    {
        "mg979/vim-visual-multi",
        lazy = false,
    },
    {
        "kylechui/nvim-surround",
        version = "*", -- Use for stability; omit to use `main` branch for the latest features
        event = "VeryLazy",
        config = function()
            require("nvim-surround").setup()
        end,
    },
    {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v2.x',
        dependencies = {
            -- LSP Support
            { 'neovim/nvim-lspconfig' }, -- Required
            {
                'williamboman/mason.nvim',
                build = function()
                    pcall(vim.cmd, 'MasonUpdate')
                end
            },
            { 'williamboman/mason-lspconfig.nvim' }, -- Optional
            -- Autocompletion
            { 'hrsh7th/nvim-cmp' },                  -- Required
            { 'hrsh7th/cmp-nvim-lsp' },              -- Required
            { 'hrsh7th/cmp-buffer' },
            { 'hrsh7th/cmp-path' },
            { 'hrsh7th/cmp-cmdline' },
            { 'hrsh7th/cmp-nvim-lsp-signature-help' },
            { 'ray-x/cmp-treesitter' },
			{ 'L3MON4D3/LuaSnip' },                  -- Required
        },
    },
    {
        'nvim-lualine/lualine.nvim',
        dependencies = {
            {
                'nvim-tree/nvim-web-devicons',
                "linrongbin16/lsp-progress.nvim",
            }
        }
    },
    {
        "onsails/lspkind.nvim"
    },
    {
        "nvim-lua/lsp-status.nvim"
    },
	{ "mfussenegger/nvim-lint" },
	{
		"mhartington/formatter.nvim",
		event = "VeryLazy",
	},
    { "Wansmer/treesj" },
    { "aznhe21/actions-preview.nvim" },
    { "cappyzawa/trim.nvim" },
    {
        'weilbith/nvim-code-action-menu',
        cmd = 'CodeActionMenu',
    },
    { "HiPhish/rainbow-delimiters.nvim" },
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
    {
        "theHamsta/nvim-dap-virtual-text"
    },
    { "lewis6991/gitsigns.nvim" },
    {
        "simrat39/rust-tools.nvim",
        ft="rust",
    },
    {
        "saecki/crates.nvim",
        ft="rust",
        config = function(_, opts)
            local crates = require("crates")
            crates.setup(opts)
            crates.show()
        end
    },
    {
        "hashivim/vim-terraform",
        ft="terraform",
    },
    {
        "mfussenegger/nvim-dap-python",
        ft = "python",
        dependencies = {
            "mfussenegger/nvim-dap",
        },
        config = function(_, _)
            local path = "~/.local/share/nvim/mason/packages/debugpy/venv/bin/python"
            require('dap-python').setup(path)
        end
    },
    {
        "leoluz/nvim-dap-go",
        ft = "go",
        dependencies = {
            "mfussenegger/nvim-dap",
        },
    },
    {
        "olexsmir/gopher.nvim",
        ft = "go",
    },
    {
        "ray-x/go.nvim",
        dependencies = 'ray-x/guihua.lua',
        ft = "go",
    },
}
