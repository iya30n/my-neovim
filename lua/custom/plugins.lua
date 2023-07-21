return function(use)
  -- themes
  use 'Shatur/neovim-ayu'
  use { "catppuccin/nvim", as = "catppuccin" }

  -- auto close
  use 'm4xshen/autoclose.nvim'

  -- tree plugin
  use {
    'nvim-tree/nvim-tree.lua',
    requires = {
      'nvim-tree/nvim-web-devicons', -- optional, for file icons
    },
    tag = 'nightly' -- optional, updated every week. (see issue #1193)
  }

  use 'christoomey/vim-tmux-navigator'
end
