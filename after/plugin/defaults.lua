local options = { noremap = true }
vim.keymap.set("i", "kj", "<Esc>", options)

vim.o.termguicolors = true
vim.cmd [[colorscheme tokyonight]]

require('lualine').setup {
	options = {
	  icons_enabled = false,
	  theme = 'tokyonight',
	  component_separators = '|',
	  section_separators = '',
	},
  }
