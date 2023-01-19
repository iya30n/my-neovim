local options = { noremap = true }
vim.keymap.set("i", "kj", "<Esc>", options)
vim.keymap.set("n", ";w", ":w<CR>")

vim.keymap.set("n", "<leader>f", ":Format<CR>")

vim.bo.tabstop = 4
vim.bo.shiftwidth = 4
vim.expandtab = true
vim.bo.softtabstop = 4

vim.o.termguicolors = true
vim.cmd [[colorscheme ayu-mirage]]

require('lualine').setup {
	options = {
	  icons_enabled = false,
	  theme = 'ayu-mirage',
	  component_separators = '|',
	  section_separators = '',
	},
  }


require("indent_blankline").setup {
    char = "",
    space_char_blankline = " ",
}

require("autoclose").setup({})
