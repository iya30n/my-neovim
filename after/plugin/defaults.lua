local options = { noremap = true }
vim.keymap.set("i", "kj", "<Esc>", options)
vim.keymap.set("n", ";w", ":w<CR>")

vim.keymap.set("n", "<leader>f", ":Format<CR>")

vim.bo.tabstop = 4
vim.bo.shiftwidth = 4
vim.expandtab = true
vim.bo.softtabstop = 4

vim.o.termguicolors = true
vim.cmd [[colorscheme github_dark]]

require('lualine').setup {
	options = {
	  icons_enabled = false,
	  theme = 'auto',
	  component_separators = '|',
	  section_separators = '',
	},
  }


require("indent_blankline").setup {
    char = "",
    space_char_blankline = " ",
}

require("autoclose").setup({})


-- examples for your init.lua

-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

-- empty setup using defaults
require("nvim-tree").setup()

-- OR setup with some options
require("nvim-tree").setup({
  sort_by = "case_sensitive",
  view = {
    adaptive_size = true,
    mappings = {
      list = {
        { key = "u", action = "dir_up" },
      },
    },
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
})

vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")
vim.keymap.set("n", "<leader>E", ":NvimTreeFocus<CR>")
