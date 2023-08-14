local options = { noremap = true }

vim.o.termguicolors = true
vim.cmd [[colorscheme everforest]]

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

-- START nvim-tree --
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
-- vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")
vim.keymap.set("n", "<leader>e", ":NvimTreeFindFileToggle<CR>")
-- vim.keymap.set("n", "<leader>E", ":NvimTreeFocus<CR>")
vim.keymap.set("n", "<leader>E", ":NvimTreeFindFile<CR>")

-- END nvim-tree --

-- START gotidy command --
function go_mod_tidy()
  vim.cmd([[ ! go mod tidy ]])
  vim.cmd([[ LspRestart ]])
end

vim.api.nvim_create_user_command("GoTidy", go_mod_tidy, {})
-- END gotidy command --
