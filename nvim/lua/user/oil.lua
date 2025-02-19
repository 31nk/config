-- lua/user/oil.lua

require("oil").setup({
	view_options = {
		show_hidden = true,
	},

	colums = {},

	keymaps = {
		["q"] = "actions.close",
		["<CR>"] = "actions.select",
	},

	skip_confirm_for_simple_edits = true,
})

vim.keymap.set("n", "t", require("oil").open, { desc = "open parent directory" })
