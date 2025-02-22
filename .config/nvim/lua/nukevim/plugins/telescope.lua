-- local builtin = require("telescope.builtin")
--
-- local actions = require("telescope.actions")
-- require("telescope").setup({
-- 	defaults = {
-- 		mappings = {
-- 			i = {
-- 				-- MAPPINGS
-- 			},
-- 		},
-- 		file_ignore_patterns = { "node_modules" },
-- 	},
-- 	pickers = {
-- 		find_files = {
-- 			hidden = true,
-- 		},
-- 	},
-- })
--


local builtin = require("telescope.builtin")
local actions = require("telescope.actions")

require("telescope").setup({
	defaults = {
		mappings = {
			i = {
				-- MAPPINGS
			},
		},
		file_ignore_patterns = { "node_modules" },
	},
	pickers = {
		find_files = {
			hidden = true,
		},
	},
	extensions = {
		["ui-select"] = {
			require("telescope.themes").get_dropdown({
			}),
		},
	},
})
require("telescope").load_extension("ui-select")
