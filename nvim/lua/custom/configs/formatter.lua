require("formatter").setup({
	logging = true,
	log_level = vim.log.levels.WARN,
	filetype = {
		lua = {
			require("formatter.filetypes.lua").stylua,
		},
        c = {
            require("formatter.filetypes.c").clangformat
        },
        go = {
            require("formatter.filetypes.go").gofmt
        },
        html = {
            require("custom.configs.formatters.prettier")
        },
        css = {
            require("formatter.filetypes.css").prettier
        },
        javascript = {
            require("formatter.filetypes.javascript").prettier
        },
        json = {
            require("formatter.filetypes.json").prettier
        },
		["*"] = {
			require("formatter.filetypes.any").remove_trailing_whitespace,
		},
	},
})
