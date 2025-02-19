-- lua/user/colors.lua

-- Clear any previous highlight settings.
vim.cmd("hi clear")

------------------------------------------------------------------
-- Main Syntax/Editor Colors using provided hex codes:
--
-- Background:   Night (#0c0910)
-- Normal text:  Ghost White (#fafaff)
-- Statements:   Periwinkle (#e4d9ff)
-- Comments:     Gunmetal (#30343f) (italicized)
-- Constants:    Delft Blue (#273469)
-- Identifiers:  Space Cadet (#1e2749)
-- LineNr:       African Violet (#a393bf)
-- Visual:       African Violet 2 (#9882ac)
------------------------------------------------------------------
vim.api.nvim_set_hl(0, "Normal", { fg = "#fafaff", bg = "#0c0910" })
vim.api.nvim_set_hl(0, "Statement", { fg = "#e4d9ff" })
vim.api.nvim_set_hl(0, "Comment", { fg = "#30343f", italic = true })
vim.api.nvim_set_hl(0, "Constant", { fg = "#273469" })
vim.api.nvim_set_hl(0, "Identifier", { fg = "#1e2749" })
vim.api.nvim_set_hl(0, "LineNr", { fg = "#a393bf" })
vim.api.nvim_set_hl(0, "Visual", { bg = "#9882ac" })

------------------------------------------------------------------
-- Additional LazyVim / lazy.nvim UI Colors using provided hex codes:
--
-- LazyNormal: fg = Pomp and Power (#73648a), bg = Night (#0c0910)
-- LazyBorder: fg = English Violet (#453750), bg = Night (#0c0910)
-- LazyButton: fg = Ghost White (#fafaff), bg = Night (#0c0910)
-- LazyButtonActive: fg = Periwinkle (#e4d9ff), bg = Night (#0c0910) (bold)
-- LazyTitle: fg = Delft Blue (#273469), bg = Night (#0c0910)
------------------------------------------------------------------
vim.api.nvim_set_hl(0, "LazyNormal", { fg = "#73648a", bg = "#0c0910" })
vim.api.nvim_set_hl(0, "LazyBorder", { fg = "#453750", bg = "#0c0910" })
vim.api.nvim_set_hl(0, "LazyButton", { fg = "#fafaff", bg = "#0c0910" })
vim.api.nvim_set_hl(0, "LazyButtonActive", { fg = "#e4d9ff", bg = "#0c0910", bold = true })
vim.api.nvim_set_hl(0, "LazyTitle", { fg = "#273469", bg = "#0c0910" })
