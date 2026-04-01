local M = {}

function M.setup()
  ---------------------------------------------------------------------------
  -- Miraculous Light — Marinette's Daytime Palette
  ---------------------------------------------------------------------------

  -- Foundations (light backgrounds, dark foregrounds)
  local bg            = "#FAFAF8"
  local bg_lighter    = "#F0EDE8"
  local bg_float      = "#EDE8E0"
  local fg            = "#2D2B28"
  local fg_dim        = "#6B7280"
  local comment       = "#8E99A4"
  local selection      = "#E8D5DC"
  local line          = "#F2EDE8"
  local cream         = "#FFF1E6"

  -- Accents (darkened from dark-theme originals for light-bg readability)
  local ladybug_red   = "#C62828"
  local deep_red      = "#8E0000"
  local rose          = "#C2185B"
  local hot_pink      = "#AD1457"
  local blush         = "#B0616A"
  local light_pink    = "#9C4A5A"
  local tikki_red     = "#D32F2F"
  local miraculous_gold = "#B8860B"
  local lucky_charm   = "#D48400"
  local seine_blue    = "#0277BD"
  local sky_blue      = "#1565C0"
  local eiffel_grey   = "#6B7280"
  local soft_lilac    = "#7B1FA2"
  local stitch_green  = "#2E7D32"
  local ribbon_purple = "#6A1B9A"
  local fabric_dark   = "#1A1A2E"

  -- Diff backgrounds
  local diff_add_bg    = "#E8F5E9"
  local diff_change_bg = "#FFF8E1"
  local diff_delete_bg = "#FFEBEE"
  local diff_text_bg   = "#FFF3C4"

  -- Diagnostic tones
  local error_fg   = ladybug_red
  local warn_fg    = lucky_charm
  local info_fg    = seine_blue
  local hint_fg    = stitch_green

  -- Helper ----------------------------------------------------------------
  local function hi(group, opts)
    vim.api.nvim_set_hl(0, group, opts)
  end

  ---------------------------------------------------------------------------
  -- 1. Editor UI (30 groups)
  ---------------------------------------------------------------------------
  hi("Normal",           { fg = fg, bg = bg })
  hi("NormalFloat",      { fg = fg, bg = bg_float })
  hi("NormalNC",         { fg = fg, bg = bg })
  hi("FloatBorder",      { fg = eiffel_grey, bg = bg_float })
  hi("FloatTitle",       { fg = ladybug_red, bg = bg_float, bold = true })
  hi("Cursor",          { fg = bg, bg = fg })
  hi("CursorLine",      { bg = line })
  hi("CursorLineNr",    { fg = ladybug_red, bold = true })
  hi("CursorColumn",    { bg = line })
  hi("LineNr",          { fg = "#C5BEB6" })
  hi("SignColumn",      { fg = eiffel_grey, bg = bg })
  hi("FoldColumn",      { fg = "#C5BEB6", bg = bg })
  hi("Folded",          { fg = comment, bg = bg_lighter })
  hi("VertSplit",       { fg = "#D5CFC8", bg = bg })
  hi("WinSeparator",    { fg = "#D5CFC8", bg = bg })
  hi("StatusLine",      { fg = fg, bg = bg_lighter })
  hi("StatusLineNC",    { fg = fg_dim, bg = bg_lighter })
  hi("TabLine",         { fg = fg_dim, bg = bg_lighter })
  hi("TabLineFill",     { fg = fg_dim, bg = bg_lighter })
  hi("TabLineSel",      { fg = ladybug_red, bg = bg, bold = true })
  hi("WinBar",          { fg = fg, bg = bg, bold = true })
  hi("WinBarNC",        { fg = fg_dim, bg = bg })
  hi("Pmenu",           { fg = fg, bg = bg_float })
  hi("PmenuSel",        { fg = fg, bg = selection })
  hi("PmenuSbar",       { bg = bg_lighter })
  hi("PmenuThumb",      { bg = eiffel_grey })
  hi("WildMenu",        { fg = bg, bg = ladybug_red })
  hi("ColorColumn",     { bg = cream })
  hi("NonText",         { fg = "#D5CFC8" })
  hi("SpecialKey",      { fg = "#D5CFC8" })

  ---------------------------------------------------------------------------
  -- 2. Search & Visual (8 groups)
  ---------------------------------------------------------------------------
  hi("Visual",          { bg = selection })
  hi("VisualNOS",       { bg = selection })
  hi("Search",          { fg = fabric_dark, bg = "#FFDCA8" })
  hi("IncSearch",       { fg = bg, bg = lucky_charm })
  hi("CurSearch",       { fg = bg, bg = ladybug_red })
  hi("Substitute",      { fg = bg, bg = rose })
  hi("MatchParen",      { fg = ladybug_red, bg = "#F8D0D0", bold = true })
  hi("QuickFixLine",    { bg = selection, bold = true })

  ---------------------------------------------------------------------------
  -- 3. Diff (4 groups)
  ---------------------------------------------------------------------------
  hi("DiffAdd",         { bg = diff_add_bg })
  hi("DiffChange",      { bg = diff_change_bg })
  hi("DiffDelete",      { fg = tikki_red, bg = diff_delete_bg })
  hi("DiffText",        { bg = diff_text_bg })

  ---------------------------------------------------------------------------
  -- 4. Spelling (4 groups)
  ---------------------------------------------------------------------------
  hi("SpellBad",        { sp = ladybug_red, undercurl = true })
  hi("SpellCap",        { sp = seine_blue, undercurl = true })
  hi("SpellLocal",      { sp = stitch_green, undercurl = true })
  hi("SpellRare",       { sp = soft_lilac, undercurl = true })

  ---------------------------------------------------------------------------
  -- 5. Messages & Diagnostics (12 groups)
  ---------------------------------------------------------------------------
  hi("ErrorMsg",        { fg = ladybug_red, bold = true })
  hi("WarningMsg",      { fg = lucky_charm, bold = true })
  hi("ModeMsg",         { fg = fg, bold = true })
  hi("MoreMsg",         { fg = stitch_green, bold = true })
  hi("Question",        { fg = seine_blue, bold = true })
  hi("Directory",       { fg = seine_blue })
  hi("Title",           { fg = ladybug_red, bold = true })
  hi("DiagnosticError", { fg = error_fg })
  hi("DiagnosticWarn",  { fg = warn_fg })
  hi("DiagnosticInfo",  { fg = info_fg })
  hi("DiagnosticHint",  { fg = hint_fg })
  hi("DiagnosticOk",    { fg = stitch_green })

  ---------------------------------------------------------------------------
  -- 6. Diagnostic Underlines (4 groups)
  ---------------------------------------------------------------------------
  hi("DiagnosticUnderlineError", { sp = error_fg, undercurl = true })
  hi("DiagnosticUnderlineWarn",  { sp = warn_fg, undercurl = true })
  hi("DiagnosticUnderlineInfo",  { sp = info_fg, undercurl = true })
  hi("DiagnosticUnderlineHint",  { sp = hint_fg, undercurl = true })

  ---------------------------------------------------------------------------
  -- 7. Diagnostic Virtual Text (4 groups)
  ---------------------------------------------------------------------------
  hi("DiagnosticVirtualTextError", { fg = error_fg, bg = "#FDE8E8" })
  hi("DiagnosticVirtualTextWarn",  { fg = warn_fg, bg = "#FFF4E0" })
  hi("DiagnosticVirtualTextInfo",  { fg = info_fg, bg = "#E3F2FD" })
  hi("DiagnosticVirtualTextHint",  { fg = hint_fg, bg = "#E8F5E9" })

  ---------------------------------------------------------------------------
  -- 8. Diagnostic Signs (4 groups)
  ---------------------------------------------------------------------------
  hi("DiagnosticSignError", { fg = error_fg, bg = bg })
  hi("DiagnosticSignWarn",  { fg = warn_fg, bg = bg })
  hi("DiagnosticSignInfo",  { fg = info_fg, bg = bg })
  hi("DiagnosticSignHint",  { fg = hint_fg, bg = bg })

  ---------------------------------------------------------------------------
  -- 9. Standard Syntax (16 groups)
  ---------------------------------------------------------------------------
  hi("Comment",        { fg = comment, italic = true })
  hi("Constant",       { fg = tikki_red })
  hi("String",         { fg = stitch_green })
  hi("Character",      { fg = stitch_green })
  hi("Number",         { fg = lucky_charm })
  hi("Boolean",        { fg = tikki_red, bold = true })
  hi("Float",          { fg = lucky_charm })
  hi("Identifier",     { fg = fg })
  hi("Function",       { fg = seine_blue, bold = true })
  hi("Statement",      { fg = rose })
  hi("Conditional",    { fg = rose })
  hi("Repeat",         { fg = rose })
  hi("Label",          { fg = hot_pink })
  hi("Operator",       { fg = blush })
  hi("Keyword",        { fg = ladybug_red })
  hi("Exception",      { fg = deep_red, bold = true })

  ---------------------------------------------------------------------------
  -- 10. Preprocessor & Types (8 groups)
  ---------------------------------------------------------------------------
  hi("PreProc",        { fg = hot_pink })
  hi("Include",        { fg = hot_pink })
  hi("Define",         { fg = hot_pink })
  hi("Macro",          { fg = hot_pink })
  hi("PreCondit",      { fg = hot_pink })
  hi("Type",           { fg = miraculous_gold })
  hi("StorageClass",   { fg = ladybug_red })
  hi("Structure",      { fg = miraculous_gold, bold = true })

  ---------------------------------------------------------------------------
  -- 11. Special & Misc Syntax (8 groups)
  ---------------------------------------------------------------------------
  hi("Typedef",        { fg = miraculous_gold })
  hi("Special",        { fg = lucky_charm })
  hi("SpecialChar",    { fg = tikki_red })
  hi("Tag",            { fg = ladybug_red })
  hi("Delimiter",      { fg = blush })
  hi("SpecialComment", { fg = light_pink, italic = true })
  hi("Debug",          { fg = tikki_red })
  hi("Underlined",     { fg = seine_blue, underline = true })

  ---------------------------------------------------------------------------
  -- 12. Misc UI (4 groups)
  ---------------------------------------------------------------------------
  hi("Ignore",         { fg = bg })
  hi("Error",          { fg = bg, bg = ladybug_red })
  hi("Todo",           { fg = miraculous_gold, bg = cream, bold = true })
  hi("Conceal",        { fg = eiffel_grey })

  ---------------------------------------------------------------------------
  -- 13. Treesitter (30 groups)
  ---------------------------------------------------------------------------
  hi("@text",                    { fg = fg })
  hi("@text.strong",            { fg = fg, bold = true })
  hi("@text.emphasis",          { fg = fg, italic = true })
  hi("@text.underline",         { fg = fg, underline = true })
  hi("@text.strike",            { fg = fg, strikethrough = true })
  hi("@text.title",             { fg = ladybug_red, bold = true })
  hi("@text.literal",           { fg = stitch_green })
  hi("@text.uri",               { fg = seine_blue, underline = true })
  hi("@text.reference",         { fg = sky_blue })
  hi("@comment",                { fg = comment, italic = true })
  hi("@punctuation",            { fg = blush })
  hi("@punctuation.delimiter",  { fg = blush })
  hi("@punctuation.bracket",    { fg = eiffel_grey })
  hi("@punctuation.special",    { fg = light_pink })
  hi("@constant",               { fg = tikki_red })
  hi("@constant.builtin",       { fg = tikki_red, bold = true })
  hi("@constant.macro",         { fg = hot_pink })
  hi("@string",                 { fg = stitch_green })
  hi("@string.regex",           { fg = lucky_charm })
  hi("@string.escape",          { fg = tikki_red })
  hi("@string.special",         { fg = lucky_charm })
  hi("@character",              { fg = stitch_green })
  hi("@number",                 { fg = lucky_charm })
  hi("@boolean",                { fg = tikki_red, bold = true })
  hi("@float",                  { fg = lucky_charm })
  hi("@function",               { fg = seine_blue, bold = true })
  hi("@function.builtin",       { fg = sky_blue, bold = true })
  hi("@function.macro",         { fg = hot_pink })
  hi("@parameter",              { fg = ribbon_purple })
  hi("@method",                 { fg = seine_blue })

  ---------------------------------------------------------------------------
  -- 14. More Treesitter (18 groups)
  ---------------------------------------------------------------------------
  hi("@field",                  { fg = blush })
  hi("@property",               { fg = blush })
  hi("@constructor",            { fg = miraculous_gold })
  hi("@conditional",            { fg = rose })
  hi("@repeat",                 { fg = rose })
  hi("@label",                  { fg = hot_pink })
  hi("@operator",               { fg = blush })
  hi("@keyword",                { fg = ladybug_red })
  hi("@keyword.function",       { fg = rose })
  hi("@keyword.return",         { fg = deep_red })
  hi("@exception",              { fg = deep_red, bold = true })
  hi("@variable",               { fg = fg })
  hi("@variable.builtin",       { fg = light_pink })
  hi("@type",                   { fg = miraculous_gold })
  hi("@type.builtin",           { fg = miraculous_gold, italic = true })
  hi("@type.definition",        { fg = miraculous_gold })
  hi("@namespace",              { fg = soft_lilac })
  hi("@include",                { fg = hot_pink })

  ---------------------------------------------------------------------------
  -- 15. LSP Semantic Tokens (8 groups)
  ---------------------------------------------------------------------------
  hi("@lsp.type.class",         { fg = miraculous_gold, bold = true })
  hi("@lsp.type.decorator",     { fg = lucky_charm })
  hi("@lsp.type.enum",          { fg = miraculous_gold })
  hi("@lsp.type.enumMember",    { fg = tikki_red })
  hi("@lsp.type.function",      { fg = seine_blue, bold = true })
  hi("@lsp.type.interface",     { fg = miraculous_gold, italic = true })
  hi("@lsp.type.macro",         { fg = hot_pink })
  hi("@lsp.type.namespace",     { fg = soft_lilac })

  ---------------------------------------------------------------------------
  -- 16. Git Signs / Gutter (6 groups)
  ---------------------------------------------------------------------------
  hi("GitSignsAdd",          { fg = stitch_green, bg = bg })
  hi("GitSignsChange",       { fg = lucky_charm, bg = bg })
  hi("GitSignsDelete",       { fg = ladybug_red, bg = bg })
  hi("GitSignsAddNr",        { fg = stitch_green })
  hi("GitSignsChangeNr",     { fg = lucky_charm })
  hi("GitSignsDeleteNr",     { fg = ladybug_red })

  ---------------------------------------------------------------------------
  -- 17. Telescope (6 groups)
  ---------------------------------------------------------------------------
  hi("TelescopeBorder",      { fg = eiffel_grey, bg = bg })
  hi("TelescopeTitle",       { fg = ladybug_red, bold = true })
  hi("TelescopePromptBorder", { fg = ladybug_red, bg = bg })
  hi("TelescopeResultsBorder", { fg = eiffel_grey, bg = bg })
  hi("TelescopePreviewBorder", { fg = eiffel_grey, bg = bg })
  hi("TelescopeMatching",    { fg = rose, bold = true })

  ---------------------------------------------------------------------------
  -- 18. Indent Blank Line (2 groups)
  ---------------------------------------------------------------------------
  hi("IndentBlanklineChar",         { fg = "#E0DCD6", nocombine = true })
  hi("IndentBlanklineContextChar",  { fg = ladybug_red, nocombine = true })

  ---------------------------------------------------------------------------
  -- 19. Nvim-Tree (4 groups)
  ---------------------------------------------------------------------------
  hi("NvimTreeFolderIcon",   { fg = lucky_charm })
  hi("NvimTreeFolderName",   { fg = seine_blue })
  hi("NvimTreeOpenedFolderName", { fg = seine_blue, bold = true })
  hi("NvimTreeRootFolder",   { fg = ladybug_red, bold = true })

  ---------------------------------------------------------------------------
  -- TOTAL: 148 highlight groups
  ---------------------------------------------------------------------------
end

return M
