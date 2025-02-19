-- Bootstrap lazy.nvim if not installed
local fn = vim.fn
local loop = vim.loop
local lazypath = fn.stdpath("data") .. "/lazy/lazy.nvim"

if not loop.fs_stat(lazypath) then
	fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

-- Plugin configuration table
local plugins = {
	-- LazyVim base configuration
	{ "LazyVim/LazyVim", import = "lazyvim.plugins" },

	-- Additional plugins
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

	-- Custom colorscheme plugin with high priority
	{
		"dgox16/oldworld.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			vim.cmd("colorscheme oldworld")
		end,
	},
}

-- Setup plugins with lazy.nvim
require("lazy").setup(plugins)

-- Configure additional settings once lazy.nvim and LazyVim are fully loaded
require("lazyvim.util").on_very_lazy(function()
	require("user.alpha")
	require("user.oil")
end)
