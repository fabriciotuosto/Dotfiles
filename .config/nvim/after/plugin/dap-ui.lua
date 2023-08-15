local dap = require("dap")
local dapui = require("dapui")
require('nvim-dap-virtual-text').setup()

dapui.setup()

dap.listeners.after.event_initialized["dapui_config"] = function()
    dapui.open()
end

dap.listeners.before.event_terminated["dapui_config"] = function()
    dapui.close()
end

dap.listeners.before.event_exited["dapui_config"] = function()
    dapui.close()
end

vim.keymap.set("n", "<leader>tb", vim.cmd.DapToggleBreakpoint)
vim.keymap.set("n", "<leader>tB", ":lua require('dap').set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>")
vim.keymap.set("n", "<leader>ro", ":lua require('dap').repl.open()<CR>")
vim.keymap.set("n", "<F6>", vim.cmd.DapStepOver)
vim.keymap.set("n", "<F7>", vim.cmd.DapStepInto)
vim.keymap.set("n", "<F8>", vim.cmd.DapStepOut)
vim.keymap.set("n", "<F9>", vim.cmd.DapContinue)
vim.keymap.set("n", "<F10>", vim.cmd.DapTerminate)


local mason_path = "/home/fabri/.local/share/nvim/mason/packages/codelldb/"
dap.adapters.codelldb = {
  type = 'server',
  port = "${port}",
  executable = {
    -- Change this to your path!
    command = mason_path .. 'codelldb',
    args = {"--port", "${port}"},
    detached = true,
  }
}

dap.configurations.rust= {
  {
    name = "Launch file",
    type = "codelldb",
    request = "launch",
    program = function()
      return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
    end,
    cwd = '${workspaceFolder}',
    stopOnEntry = false,
  },
}

dap.configurations.c = dap.configurations.rust
dap.configurations.cpp = dap.configurations.rust
