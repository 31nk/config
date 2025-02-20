local nnn = require("nnn")

nnn.setup({
	show_hidden = true,
	-- You can add further nnn.nvim options here as needed.
})

-- Map "t" in normal mode to open the nnn explorer.
vim.keymap.set("n", "t", nnn.open, { desc = "Open nnn file explorer" })

-- When the nnn explorer is open, set up buffer-local mappings.
vim.api.nvim_create_autocmd("FileType", {
	pattern = "nnn",
	callback = function(args)
		local opts = { noremap = true, silent = true, buffer = args.buf }
		-- "q" closes the explorer window.
		vim.keymap.set("n", "q", "<cmd>q!<CR>", opts)
		-- "<CR>" sends an Enter key to trigger nnn's default selection.
		vim.keymap.set("n", "<CR>", function()
			vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("<CR>", true, false, true), "n", true)
		end, opts)
	end,
})
