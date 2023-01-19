return function(use)
  use 'folke/tokyonight.nvim'
  use 'Shatur/neovim-ayu'
  use 'm4xshen/autoclose.nvim'
  use {
    'nvim-tree/nvim-tree.lua',
    requires = {
      'nvim-tree/nvim-web-devicons', -- optional, for file icons
    },
    tag = 'nightly' -- optional, updated every week. (see issue #1193)
  }
end
