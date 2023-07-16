local dap = require("dap")
local dapui = require("dapui")
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

vim.keymap.set("n", "<leader>dt", vim.cmd.DapToggleBreakpoint)
vim.keymap.set("n", "<leader>dx", vim.cmd.DapTerminate)
vim.keymap.set("n", "<leader>do", vim.cmd.DapStepOver)
vim.keymap.set("n", "<leader>di", vim.cmd.DapStepInto)
