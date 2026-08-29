
local palette = {
  bg        = "#000000",
  fg        = "#cdd6f4",
  cursor    = "#89b4fa",
  color0    = "#1e2a44",
  color1    = "#313a5f",
  color2    = "#40507a",
  color3    = "#5169a0",
  color4    = "#6080c5",
  color5    = "#7494d4",
  color6    = "#89b4fa",
  color7    = "#a4c2f4",
  color8    = "#2b3b64",
  color9    = "#4564a8",
  color10   = "#5b7cc0",
  color11   = "#7394d6",
  color12   = "#89b4fa",
  color13   = "#a6c2f7",
  color14   = "#c0d6f9",
  color15   = "#e1ebff",
}

vim.cmd("highlight clear")
if vim.fn.exists("syntax_on") == 1 then
  vim.cmd("syntax reset")
end

vim.o.background = "dark"
vim.g.colors_name = "custom_palette"

local hl = function(group, opts)
  vim.api.nvim_set_hl(0, group, opts)
end

-- Base Editor Highlights
hl("Normal",       { fg = palette.fg, bg = palette.bg })
hl("NormalFloat",  { fg = palette.fg, bg = palette.color0 })
hl("FloatBorder",  { fg = palette.color6, bg = palette.color0 })
hl("ColorColumn",  { bg = palette.color0 })
hl("Cursor",       { fg = palette.bg, bg = palette.cursor })
hl("CursorLine",   { bg = palette.color0 })
hl("CursorColumn", { bg = palette.color0 })
hl("LineNr",       { fg = palette.color3 })
hl("CursorLineNr", { fg = palette.color6, bold = true })
hl("VertSplit",    { fg = palette.color1, bg = palette.bg })
hl("WinSeparator", { fg = palette.color1, bg = palette.bg })
hl("StatusLine",   { fg = "#cdd6f4", bg = "none" })

hl("StatusLineNC", { fg = "#cdd6f4", bg = "none" })
hl("Pmenu",        { fg = palette.fg, bg = palette.color0 })
hl("PmenuSel",     { fg = palette.bg, bg = palette.color6 })
hl("PmenuSbar",    { bg = palette.color1 })
hl("PmenuThumb",   { bg = palette.color4 })
hl("Visual",       { bg = palette.color2 })
hl("Search",       { fg = palette.bg, bg = palette.color11 })
hl("IncSearch",    { fg = palette.bg, bg = palette.color14 })
hl("MatchParen",   { fg = palette.color15, bg = palette.color2, bold = true })
hl("Folded",       { fg = palette.color5, bg = palette.color0 })
hl("FoldColumn",   { fg = palette.color3, bg = palette.bg })
hl("SignColumn",   { fg = palette.fg, bg = palette.bg })
hl("Directory",    { fg = palette.color6, bold = true })
hl("Title",        { fg = palette.color12, bold = true })
hl("ErrorMsg",     { fg = palette.color15, bg = palette.color1 })
hl("WarningMsg",   { fg = palette.color11 })
hl("MoreMsg",      { fg = palette.color10 })
hl("Question",     { fg = palette.color14 })

-- Syntax Highlighting
hl("Comment",        { fg = palette.color3, italic = true })
hl("Constant",       { fg = palette.color13 })
hl("String",         { fg = palette.color7 })
hl("Character",      { fg = palette.color14 })
hl("Number",         { fg = palette.color11 })
hl("Boolean",        { fg = palette.color10 })
hl("Float",          { fg = palette.color11 })
hl("Identifier",     { fg = palette.fg })
hl("Function",       { fg = palette.color6, bold = true })
hl("Statement",      { fg = palette.color5 })
hl("Conditional",    { fg = palette.color4 })
hl("Repeat",         { fg = palette.color4 })
hl("Label",          { fg = palette.color9 })
hl("Operator",       { fg = palette.color14 })
hl("Keyword",        { fg = palette.color5, bold = true })
hl("Exception",      { fg = palette.color9 })
hl("PreProc",        { fg = palette.color10 })
hl("Include",        { fg = palette.color4 })
hl("Define",         { fg = palette.color5 })
hl("Macro",          { fg = palette.color13 })
hl("Type",           { fg = palette.color12 })
hl("StorageClass",   { fg = palette.color4 })
hl("Structure",      { fg = palette.color6 })
hl("Typedef",        { fg = palette.color12 })
hl("Special",        { fg = palette.color14 })
hl("SpecialChar",    { fg = palette.color15 })
hl("Tag",            { fg = palette.color6 })
hl("Delimiter",      { fg = palette.color7 })
hl("SpecialComment", { fg = palette.color11 })
hl("Debug",          { fg = palette.color9 })
hl("Underlined",     { underline = true })
hl("Bold",           { bold = true })
hl("Italic",         { italic = true })
hl("Error",          { fg = palette.color15, bg = palette.color1 })
hl("Todo",           { fg = palette.bg, bg = palette.color6, bold = true })

-- Diagnostic Highlights (LSP)
hl("DiagnosticError", { fg = palette.color9 })
hl("DiagnosticWarn",  { fg = palette.color11 })
hl("DiagnosticInfo",  { fg = palette.color6 })
hl("DiagnosticHint",  { fg = palette.color14 })

-- Treesitter Syntax Compatibility
hl("@comment",          { link = "Comment" })
hl("@string",           { link = "String" })
hl("@number",           { link = "Number" })
hl("@boolean",          { link = "Boolean" })
hl("@function",         { link = "Function" })
hl("@function.builtin", { fg = palette.color14, bold = true })
hl("@keyword",          { link = "Keyword" })
hl("@operator",         { link = "Operator" })
hl("@variable",         { fg = palette.fg })
hl("@variable.builtin", { fg = palette.color13 })
hl("@type",             { link = "Type" })
hl("@constant",         { link = "Constant" })
hl("@property",         { fg = palette.color7 })
hl("@parameter",        { fg = palette.color15 })
