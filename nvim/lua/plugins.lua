-- lua/plugins.lua

-- Bootstrap lazy.nvim if not installed
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

-- Setup plugins with lazy.nvim
require("lazy").setup({
	-- LazyVim base configuration
	{ "LazyVim/LazyVim", import = "lazyvim.plugins" },

	-- Removed the Kanagawa colorscheme plugin to avoid conflicts

	-- Additional plugins:
	{ "tpope/vim-sensible" },
	{ "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },
	{ "hrsh7th/nvim-cmp" },
	{ "folke/which-key.nvim" },
	{ "neovim/nvim-lspconfig" },
	{ "williamboman/mason.nvim" },
	{ "folke/trouble.nvim" },
	{ "windwp/nvim-autopairs" },
	{ "nvim-neo-tree/neo-tree.nvim" },
	{ "folke/lazydev.nvim" },
	{ "nvim-tree/nvim-tree.lua" },
	{ "junegunn/fzf.vim" },
	{ "goolord/alpha-nvim" },
	{ "stevearc/oil.nvim" },
})

-- Once lazy.nvim (and LazyVim) is fully loaded, configure additional settings.
require("lazyvim.util").on_very_lazy(function()
	-- Load user-specific configurations
	require("user.colors")
	require("user.alpha")
	require("user.oil")
end)
