-- lua/user/colors.lua

-- Clear any previous highlight settings.
vim.cmd("hi clear")

------------------------------------------------------------------
-- Main Syntax/Editor Colors using custom hex codes:
--
-- Background:   #1E201E
-- Normal text:  #ECDFCC
-- Statements:   #5C7285
-- Comments:     #A7B49E (italicized)
-- Constants:    #E2E0C8
-- Identifiers:  #818C78
-- LineNr:       #3C3D37
-- Visual:       #697565 (for contrast)
------------------------------------------------------------------
vim.api.nvim_set_hl(0, "Normal", { fg = "#ECDFCC", bg = "#1E201E" })
vim.api.nvim_set_hl(0, "Statement", { fg = "#5C7285" })
vim.api.nvim_set_hl(0, "Comment", { fg = "#A7B49E", italic = true })
vim.api.nvim_set_hl(0, "Constant", { fg = "#E2E0C8" })
vim.api.nvim_set_hl(0, "Identifier", { fg = "#818C78" })
vim.api.nvim_set_hl(0, "LineNr", { fg = "#3C3D37" })
vim.api.nvim_set_hl(0, "Visual", { bg = "#697565" })

------------------------------------------------------------------
-- Additional LazyVim / lazy.nvim UI Colors using custom hex codes:
------------------------------------------------------------------
vim.api.nvim_set_hl(0, "LazyNormal", { fg = "#ECDFCC", bg = "#1E201E" })
vim.api.nvim_set_hl(0, "LazyBorder", { fg = "#5C7285", bg = "#1E201E" })
vim.api.nvim_set_hl(0, "LazyButton", { fg = "#5C7285", bg = "#1E201E" })
vim.api.nvim_set_hl(0, "LazyButtonActive", { fg = "#ECDFCC", bg = "#1E201E", bold = true })
vim.api.nvim_set_hl(0, "LazyTitle", { fg = "#5C7285", bg = "#1E201E" })
