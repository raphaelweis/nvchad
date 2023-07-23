-- options
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.relativenumber = true
vim.opt.wrap = false
vim.opt.iskeyword:append("-")
vim.cmd("autocmd FileType * set formatoptions-=cro")

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
