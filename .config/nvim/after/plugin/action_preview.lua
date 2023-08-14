require("actions-preview").setup {
  diff = {
    algorithm = "patience",
    ignore_whitespace = true,
  },
  telescope = require("telescope.themes").get_dropdown { winblend = 10 },
}


vim.keymap.set({ "v", "n" }, "<leader>ca", require("actions-preview").code_actions)
