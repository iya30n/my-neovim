return function(use)
  -- themes
  use 'Shatur/neovim-ayu'
  use ({ 'projekt0n/github-nvim-theme', tag = 'v0.0.7' })

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
end
