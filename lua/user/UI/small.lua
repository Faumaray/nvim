-- require("fidget").setup {}
require("lsp_lines").setup()
require("colorizer").setup()

-- Default options:
require('kanagawa').setup({
 globalStatus = true, -- adjust window separators highlight for laststatus=3
 terminalColors = true, -- define vim.g.terminal_color_{0,17}
 theme = "default" -- Load "default" theme or the experimental "light" theme
})
--vim.cmd("colorscheme kanagawa")
-- vim.cmd("colorscheme aurora")

vim.cmd("colorscheme oxocarbon")
require('hlslens').setup({
 calm_down = true,
 nearest_only = true,
 nearest_float_when = 'always'
})

require('cinnamon').setup {
 extra_keymaps = true,
 override_keymaps = true,
 max_length = 500,
 scroll_limit = -1,
}
