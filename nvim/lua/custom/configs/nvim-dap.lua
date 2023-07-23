--TODO
vim.fn.sign_define("DapBreakpoint", { text = "", texthl = "DapBreakpoint" })
vim.fn.sign_define("DapBreakpointCondition", { text = "", texthl = "DapBreakpoint" })
vim.fn.sign_define("DapBreakpointRejected", { text = "", texthl = "DapBreakpoint" })
vim.fn.sign_define("DapLogPoint", { text = "", texthl = "DapLogPoint" })
vim.fn.sign_define("DapStopped", { text = "", texthl = "DapStopped" })
vim.api.nvim_set_hl(0, "DapBreakpoint", { ctermbg = 0, fg = "#993939" })
vim.api.nvim_set_hl(0, "DapLogPoint", { ctermbg = 0, fg = "#61afef" })
vim.api.nvim_set_hl(0, "DapStopped", { ctermbg = 0, fg = "#98c379" })
