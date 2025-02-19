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

require("lazy").setup({
  -- Essential Plugins
  { "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },
  { "hrsh7th/nvim-cmp" },
  { "neovim/nvim-lspconfig" },
  { "williamboman/mason.nvim" },
  { "folke/which-key.nvim" },
  { "windwp/nvim-autopairs" },
  { "folke/trouble.nvim" },

  -- File Explorer (Choose One: Neo-tree)
  { "nvim-neo-tree/neo-tree.nvim" },

  -- Other Useful Plugins
  { "junegunn/fzf.vim" },
  { "goolord/alpha-nvim" },
  { "stevearc/oil.nvim" },

  -- Theme
  {
    "dgox16/oldworld.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      vim.cmd.colorscheme("oldworld")
    end,
  },

  -- UI Enhancements (Folke's Snacks)
  {
    "folke/snacks.nvim",
    lazy = false,
    priority = 900,
    opts = {
      bigfile      = { enabled = true },
      dashboard    = { enabled = true },
      explorer     = { enabled = true },
      indent       = { enabled = true },
      input        = { enabled = true },
      picker       = { enabled = true },
      notifier     = { enabled = true },
      quickfile    = { enabled = true },
      scope        = { enabled = true },
      scroll       = { enabled = true },
      statuscolumn = { enabled = true },
      words        = { enabled = true },
    },
  },

  {
    "stevearc/conform.nvim",
    opts = {},
  },

  -- Noice Configuration
  {
    "folke/noice.nvim",
    event = "VeryLazy",
    opts = {
      lsp = {
        override = {
          ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
          ["vim.lsp.util.stylize_markdown"] = true,
          ["cmp.entry.get_documentation"] = true,
        },
      },
      presets = {
        bottom_search          = true,  -- use a classic bottom cmdline for search
        command_palette        = true,  -- position the cmdline and popupmenu together
        long_message_to_split  = true,  -- long messages will be sent to a split
        inc_rename             = false, -- enables an input dialog for inc-rename.nvim
        lsp_doc_border         = false, -- add a border to hover docs and signature help
      },
    },
    dependencies = {
      "MunifTanjim/nui.nvim",
      "rcarriga/nvim-notify",
    },
  },
})

-- Load Custom Configurations
pcall(require, "user.alpha")
pcall(require, "user.oil")

