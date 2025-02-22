-- Clear any previous highlight settings.
vim.cmd("hi clear")

-- Define color palette.
local bg = "#161617" -- background (added)
local fg = "#b8bfd3" -- chosen as a light, readable foreground

local reg0 = "#343b4f"
local reg1 = "#464e61"
local reg2 = "#6d7589"
local reg3 = "#a0a7bb"
local reg4 = "#b8bfd3"
local reg5 = "#888fa7"
local reg6 = "#acb1cb"
local reg7 = "#bad3cd"

local bri0 = "#acc0ba"
local bri1 = "#9daba8"
local bri2 = "#343b4f"
local bri3 = "#464e61"
local bri4 = "#6d7589"
local bri5 = "#a0a7bb"
local bri6 = "#b8bfd3"
local bri7 = "#888fa7"

------------------------------------------------------------------
-- Standard Syntax Groups
------------------------------------------------------------------
vim.api.nvim_set_hl(0, "Normal", { fg = fg, bg = bg })
vim.api.nvim_set_hl(0, "Comment", { fg = bri1, bg = bg, italic = true })
vim.api.nvim_set_hl(0, "Constant", { fg = reg0, bg = bg })
vim.api.nvim_set_hl(0, "String", { fg = reg1, bg = bg })
vim.api.nvim_set_hl(0, "Character", { fg = reg1, bg = bg })
vim.api.nvim_set_hl(0, "Number", { fg = reg2, bg = bg })
vim.api.nvim_set_hl(0, "Boolean", { fg = reg2, bg = bg })
vim.api.nvim_set_hl(0, "Identifier", { fg = reg3, bg = bg })
vim.api.nvim_set_hl(0, "Function", { fg = reg4, bg = bg })
vim.api.nvim_set_hl(0, "Statement", { fg = reg5, bg = bg })
vim.api.nvim_set_hl(0, "Conditional", { fg = reg6, bg = bg })
vim.api.nvim_set_hl(0, "Repeat", { fg = reg7, bg = bg })
vim.api.nvim_set_hl(0, "Label", { fg = bri0, bg = bg })
vim.api.nvim_set_hl(0, "Operator", { fg = bri1, bg = bg })
vim.api.nvim_set_hl(0, "Keyword", { fg = bri2, bg = bg })
vim.api.nvim_set_hl(0, "Exception", { fg = bri3, bg = bg })
vim.api.nvim_set_hl(0, "PreProc", { fg = bri4, bg = bg })
vim.api.nvim_set_hl(0, "Include", { fg = bri5, bg = bg })
vim.api.nvim_set_hl(0, "Define", { fg = bri6, bg = bg })
vim.api.nvim_set_hl(0, "Macro", { fg = bri7, bg = bg })
vim.api.nvim_set_hl(0, "PreCondit", { fg = reg0, bg = bg })
vim.api.nvim_set_hl(0, "Type", { fg = reg1, bg = bg })
vim.api.nvim_set_hl(0, "StorageClass", { fg = reg2, bg = bg })
vim.api.nvim_set_hl(0, "Structure", { fg = reg3, bg = bg })
vim.api.nvim_set_hl(0, "Typedef", { fg = reg4, bg = bg })
vim.api.nvim_set_hl(0, "Special", { fg = reg5, bg = bg })
vim.api.nvim_set_hl(0, "SpecialChar", { fg = reg6, bg = bg })
vim.api.nvim_set_hl(0, "Tag", { fg = reg7, bg = bg })
vim.api.nvim_set_hl(0, "Delimiter", { fg = bri0, bg = bg })
vim.api.nvim_set_hl(0, "SpecialComment", { fg = bri1, bg = bg, italic = true })
vim.api.nvim_set_hl(0, "Debug", { fg = bri2, bg = bg })
vim.api.nvim_set_hl(0, "Underlined", { fg = bri3, bg = bg, underline = true })
vim.api.nvim_set_hl(0, "Error", { fg = bri4, bg = bg, bold = true })
vim.api.nvim_set_hl(0, "Todo", { fg = bri5, bg = bg, bold = true })

------------------------------------------------------------------
-- Additional UI Groups
------------------------------------------------------------------
vim.api.nvim_set_hl(0, "CursorLine", { bg = "#1c1c1c" })
vim.api.nvim_set_hl(0, "CursorColumn", { bg = "#1c1c1c" })
vim.api.nvim_set_hl(0, "ColorColumn", { bg = "#1c1c1c" })
vim.api.nvim_set_hl(0, "LineNr", { fg = reg2, bg = bg })
vim.api.nvim_set_hl(0, "CursorLineNr", { fg = reg2, bg = "#1c1c1c" })
vim.api.nvim_set_hl(0, "Visual", { bg = "#3e3e3e" })
vim.api.nvim_set_hl(0, "StatusLine", { fg = fg, bg = "#202020" })
vim.api.nvim_set_hl(0, "StatusLineNC", { fg = bri5, bg = "#202020" })
vim.api.nvim_set_hl(0, "VertSplit", { fg = "#202020", bg = "#202020" })
vim.api.nvim_set_hl(0, "TabLine", { fg = fg, bg = "#1c1c1c" })
vim.api.nvim_set_hl(0, "TabLineFill", { fg = fg, bg = bg })
vim.api.nvim_set_hl(0, "TabLineSel", { fg = fg, bg = "#202020" })

------------------------------------------------------------------
-- LazyVim / lazy.nvim UI Groups
------------------------------------------------------------------
vim.api.nvim_set_hl(0, "LazyNormal", { fg = bri5, bg = bg })
vim.api.nvim_set_hl(0, "LazyBorder", { fg = reg3, bg = bg })
vim.api.nvim_set_hl(0, "LazyButton", { fg = fg, bg = bg })
vim.api.nvim_set_hl(0, "LazyButtonActive", { fg = reg5, bg = bg, bold = true })
vim.api.nvim_set_hl(0, "LazyTitle", { fg = reg1, bg = bg })
