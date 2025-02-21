-- lua/user/colors.lua

-- Clear any previous highlight settings.
vim.cmd("hi clear")

-- Define color palette.
local bg = "#161617"
local cream = "#faf8d2"
local champagne = "#f8ead1"
local champagnePink = "#f5dbd1"
local thistle = "#e7cce2"
local periwinkle = "#cabfe8"
local powderBlue = "#a9bbec"
local jordyBlue = "#9fc7f0"
local uranianBlue = "#a0d3f3"
local nonPhotoBlue = "#aadde3"
local teaGreen = "#c6e9c8"

------------------------------------------------------------------
-- Standard Syntax Groups
------------------------------------------------------------------
vim.api.nvim_set_hl(0, "Normal", { fg = cream, bg = bg })
vim.api.nvim_set_hl(0, "Comment", { fg = champagnePink, bg = bg, italic = true })
vim.api.nvim_set_hl(0, "Constant", { fg = powderBlue, bg = bg })
vim.api.nvim_set_hl(0, "String", { fg = champagne, bg = bg })
vim.api.nvim_set_hl(0, "Character", { fg = champagne, bg = bg })
vim.api.nvim_set_hl(0, "Number", { fg = powderBlue, bg = bg })
vim.api.nvim_set_hl(0, "Boolean", { fg = powderBlue, bg = bg })
vim.api.nvim_set_hl(0, "Identifier", { fg = jordyBlue, bg = bg })
vim.api.nvim_set_hl(0, "Function", { fg = jordyBlue, bg = bg })
vim.api.nvim_set_hl(0, "Statement", { fg = thistle, bg = bg })
vim.api.nvim_set_hl(0, "Conditional", { fg = thistle, bg = bg })
vim.api.nvim_set_hl(0, "Repeat", { fg = thistle, bg = bg })
vim.api.nvim_set_hl(0, "Label", { fg = thistle, bg = bg })
vim.api.nvim_set_hl(0, "Operator", { fg = nonPhotoBlue, bg = bg })
vim.api.nvim_set_hl(0, "Keyword", { fg = thistle, bg = bg })
vim.api.nvim_set_hl(0, "Exception", { fg = thistle, bg = bg })
vim.api.nvim_set_hl(0, "PreProc", { fg = teaGreen, bg = bg })
vim.api.nvim_set_hl(0, "Include", { fg = teaGreen, bg = bg })
vim.api.nvim_set_hl(0, "Define", { fg = teaGreen, bg = bg })
vim.api.nvim_set_hl(0, "Macro", { fg = teaGreen, bg = bg })
vim.api.nvim_set_hl(0, "PreCondit", { fg = teaGreen, bg = bg })
vim.api.nvim_set_hl(0, "Type", { fg = periwinkle, bg = bg })
vim.api.nvim_set_hl(0, "StorageClass", { fg = periwinkle, bg = bg })
vim.api.nvim_set_hl(0, "Structure", { fg = periwinkle, bg = bg })
vim.api.nvim_set_hl(0, "Typedef", { fg = periwinkle, bg = bg })
vim.api.nvim_set_hl(0, "Special", { fg = nonPhotoBlue, bg = bg })
vim.api.nvim_set_hl(0, "SpecialChar", { fg = nonPhotoBlue, bg = bg })
vim.api.nvim_set_hl(0, "Tag", { fg = nonPhotoBlue, bg = bg })
vim.api.nvim_set_hl(0, "Delimiter", { fg = nonPhotoBlue, bg = bg })
vim.api.nvim_set_hl(0, "SpecialComment", { fg = champagnePink, bg = bg, italic = true })
vim.api.nvim_set_hl(0, "Debug", { fg = nonPhotoBlue, bg = bg })
vim.api.nvim_set_hl(0, "Underlined", { fg = champagne, bg = bg, underline = true })
vim.api.nvim_set_hl(0, "Error", { fg = champagnePink, bg = bg, bold = true })
vim.api.nvim_set_hl(0, "Todo", { fg = teaGreen, bg = bg, bold = true })

------------------------------------------------------------------
-- Additional UI Groups
------------------------------------------------------------------
vim.api.nvim_set_hl(0, "CursorLine", { bg = "#1c1c1c" })
vim.api.nvim_set_hl(0, "CursorColumn", { bg = "#1c1c1c" })
vim.api.nvim_set_hl(0, "ColorColumn", { bg = "#1c1c1c" })
vim.api.nvim_set_hl(0, "LineNr", { fg = uranianBlue, bg = bg })
vim.api.nvim_set_hl(0, "CursorLineNr", { fg = uranianBlue, bg = "#1c1c1c" })
vim.api.nvim_set_hl(0, "Visual", { bg = "#3e3e3e" })
vim.api.nvim_set_hl(0, "StatusLine", { fg = cream, bg = "#202020" })
vim.api.nvim_set_hl(0, "StatusLineNC", { fg = teaGreen, bg = "#202020" })
vim.api.nvim_set_hl(0, "VertSplit", { fg = "#202020", bg = "#202020" })
vim.api.nvim_set_hl(0, "TabLine", { fg = cream, bg = "#1c1c1c" })
vim.api.nvim_set_hl(0, "TabLineFill", { fg = cream, bg = bg })
vim.api.nvim_set_hl(0, "TabLineSel", { fg = cream, bg = "#202020" })

------------------------------------------------------------------
-- LazyVim / lazy.nvim UI Groups
------------------------------------------------------------------
vim.api.nvim_set_hl(0, "LazyNormal", { fg = teaGreen, bg = bg })
vim.api.nvim_set_hl(0, "LazyBorder", { fg = periwinkle, bg = bg })
vim.api.nvim_set_hl(0, "LazyButton", { fg = cream, bg = bg })
vim.api.nvim_set_hl(0, "LazyButtonActive", { fg = thistle, bg = bg, bold = true })
vim.api.nvim_set_hl(0, "LazyTitle", { fg = champagne, bg = bg })
