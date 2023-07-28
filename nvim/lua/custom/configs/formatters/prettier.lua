local util = require("formatter.util")
local prettier_tab_width = 4

return function()
	return {
		exe = "prettier",
		args = {
			"--stdin-filepath",
			util.escape_path(util.get_current_buffer_file_path()),
			"--tab-width",
			prettier_tab_width,
		},
		stdin = true,
		try_node_modules = true,
	}
end
