local M = {}

function M.setup()
  ---------------------------------------------------------------------------
  -- Miraculous Light — Marinette's Cute Palette
  --   soft pinks, pastels & bubblegum charm
  ---------------------------------------------------------------------------

  -- Foundations (rosy-tinted whites, warm & cozy like the bakery)
  local bg            = "#FFF8F9"
  local bg_lighter    = "#FFF0F3"
  local bg_float      = "#FFEBEF"
  local fg            = "#3D2B33"
  local fg_dim        = "#8C7B85"
  local comment       = "#B8A0AC"
  local selection      = "#F5D5E0"
  local line          = "#FFF3F5"
  local cream         = "#FFF0E8"

  -- Accents (Marinette's sweet side — softer, dreamier, cuter)
  local ladybug_red   = "#E84575"    -- her signature pink-red, softened
  local deep_red      = "#C9365F"    -- darker but still rosy
  local rose          = "#E8608A"    -- sweet rose
  local hot_pink      = "#D94D8A"    -- vibrant but cute
  local blush         = "#D88A9A"    -- cheek blush
  local light_pink    = "#C97A8A"    -- soft macaroon pink
  local tikki_red     = "#F06688"    -- tikki but make it kawaii
  local miraculous_gold = "#D4956B"  -- warm croissant gold
  local lucky_charm   = "#E0943A"    -- honey glaze
  local petal_pink    = "#EC4899"    -- flower petal pink
  local sakura        = "#F472B6"    -- cherry blossom
  local info_blue     = "#6BB3D9"    -- sky over Paris
  local eiffel_grey   = "#9B8E96"    -- soft lavender grey
  local soft_lilac    = "#A855C7"    -- butterfly lilac
  local stitch_green  = "#4AADA0"    -- macaron frost
  local ribbon_purple = "#9D5EC5"    -- ribbon on Marinette's gift box
  local fabric_dark   = "#2D1F30"    -- dark satin

  -- Diff backgrounds (pastel soft)
  local diff_add_bg    = "#E8F8EF"
  local diff_change_bg = "#FFF5E6"
  local diff_delete_bg = "#FFE8EE"
  local diff_text_bg   = "#FFF0D4"

  -- Diagnostic tones
  local error_fg   = ladybug_red
  local warn_fg    = lucky_charm
  local info_fg    = info_blue
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
  hi("LineNr",          { fg = "#D8C5CC" })
  hi("SignColumn",      { fg = eiffel_grey, bg = bg })
  hi("FoldColumn",      { fg = "#D8C5CC", bg = bg })
  hi("Folded",          { fg = comment, bg = bg_lighter })
  hi("VertSplit",       { fg = "#E8D0D8", bg = bg })
  hi("WinSeparator",    { fg = "#E8D0D8", bg = bg })
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
  hi("NonText",         { fg = "#E8D0D8" })
  hi("SpecialKey",      { fg = "#E8D0D8" })

  ---------------------------------------------------------------------------
  -- 2. Search & Visual (8 groups)
  ---------------------------------------------------------------------------
  hi("Visual",          { bg = selection })
  hi("VisualNOS",       { bg = selection })
  hi("Search",          { fg = fabric_dark, bg = "#FFD6E0" })
  hi("IncSearch",       { fg = bg, bg = lucky_charm })
  hi("CurSearch",       { fg = bg, bg = ladybug_red })
  hi("Substitute",      { fg = bg, bg = rose })
  hi("MatchParen",      { fg = ladybug_red, bg = "#FFDCE8", bold = true })
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
  hi("SpellCap",        { sp = petal_pink, undercurl = true })
  hi("SpellLocal",      { sp = stitch_green, undercurl = true })
  hi("SpellRare",       { sp = soft_lilac, undercurl = true })

  ---------------------------------------------------------------------------
  -- 5. Messages & Diagnostics (12 groups)
  ---------------------------------------------------------------------------
  hi("ErrorMsg",        { fg = ladybug_red, bold = true })
  hi("WarningMsg",      { fg = lucky_charm, bold = true })
  hi("ModeMsg",         { fg = fg, bold = true })
  hi("MoreMsg",         { fg = stitch_green, bold = true })
  hi("Question",        { fg = petal_pink, bold = true })
  hi("Directory",       { fg = petal_pink })
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
  hi("DiagnosticVirtualTextError", { fg = error_fg, bg = "#FFE8EE" })
  hi("DiagnosticVirtualTextWarn",  { fg = warn_fg, bg = "#FFF4E5" })
  hi("DiagnosticVirtualTextInfo",  { fg = info_fg, bg = "#E8F2FC" })
  hi("DiagnosticVirtualTextHint",  { fg = hint_fg, bg = "#E8F8EF" })

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
  hi("Function",       { fg = petal_pink, bold = true })
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
  hi("Underlined",     { fg = petal_pink, underline = true })

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
  hi("@text.uri",               { fg = petal_pink, underline = true })
  hi("@text.reference",         { fg = sakura })
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
  hi("@function",               { fg = petal_pink, bold = true })
  hi("@function.builtin",       { fg = sakura, bold = true })
  hi("@function.macro",         { fg = hot_pink })
  hi("@parameter",              { fg = ribbon_purple })
  hi("@method",                 { fg = petal_pink })

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
  hi("@lsp.type.function",      { fg = petal_pink, bold = true })
  hi("@lsp.type.interface",     { fg = miraculous_gold, italic = true })
  hi("@lsp.type.macro",         { fg = hot_pink })
  hi("@lsp.type.namespace",     { fg = soft_lilac })

  ---------------------------------------------------------------------------
  -- 15b. LSP Inlay Hints
  ---------------------------------------------------------------------------
  hi("LspInlayHint",            { fg = "#C0A0B0", bg = "#FFF3F5", italic = true })

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
  hi("IndentBlanklineChar",         { fg = "#F0D8E0", nocombine = true })
  hi("IndentBlanklineContextChar",  { fg = ladybug_red, nocombine = true })

  ---------------------------------------------------------------------------
  -- 19. Nvim-Tree (4 groups)
  ---------------------------------------------------------------------------
  hi("NvimTreeFolderIcon",   { fg = lucky_charm })
  hi("NvimTreeFolderName",   { fg = petal_pink })
  hi("NvimTreeOpenedFolderName", { fg = petal_pink, bold = true })
  hi("NvimTreeRootFolder",   { fg = ladybug_red, bold = true })

  ---------------------------------------------------------------------------
  -- TOTAL: 148 highlight groups
  ---------------------------------------------------------------------------
end

return M
