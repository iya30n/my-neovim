return function(use)
  use 'folke/tokyonight.nvim'
  use 'Shatur/neovim-ayu'
  use({
    "lukas-reineke/indent-blankline.nvim",
      config = function()
        require("indent_blankline").setup({
	    space_char_blankline = " ",
	    show_current_context = true,
	    show_current_context_start = true,
	    char = '|',
	    show_trailing_blankline_indent = false,
	})
      end
  })
end
