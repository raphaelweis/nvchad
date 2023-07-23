-- options
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.relativenumber = true
vim.opt.wrap = false
vim.opt.iskeyword:append("-")
vim.cmd("autocmd FileType * set formatoptions-=cro")

vim.api.nvim_create_autocmd("ColorScheme", {
	pattern = "*",
	--group = "UserDefLoadOnce",
	desc = "prevent colorscheme clears self-defined DAP icon colors.",
	callback = function()
		vim.api.nvim_set_hl(0, "DapBreakpoint", { ctermbg = 0, fg = "#993939" })
		vim.api.nvim_set_hl(0, "DapLogPoint", { ctermbg = 0, fg = "#61afef" })
		vim.api.nvim_set_hl(0, "DapStopped", { ctermbg = 0, fg = "#98c379" })
	end,
})

---@type ChadrcConfig
local M = {
	mappings = require("custom.mappings"),
	plugins = "custom.plugins",
	ui = {
		theme = "gruvbox",
		nvdash = {
			load_on_startup = true,
		},
		statusline = {
			theme = "default", -- default/vscode/vscode_colored/minimal

			-- default/round/block/arrow (separators work only for "default" statusline theme;
			-- round and block will work for the minimal theme only)
			separator_style = "default",
		},
	},
}

return M
