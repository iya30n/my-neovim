local options = { noremap = true }
vim.keymap.set("i", "kj", "<Esc>", options)

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
