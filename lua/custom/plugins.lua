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

  use {
    'glepnir/dashboard-nvim',
    event = 'VimEnter',
    config = function()
      require('dashboard').setup {
        theme = 'hyper',
        config = {
          week_header = {
            enable = true,
          },
          project = {
            enable = true,
          },
          disable_move = true,
          shortcut = {
            {
              desc = 'Update',
              icon = ' ',
              group = 'Include',
              action = 'Lazy update',
              key = 'u',
            },
            {
              icon = ' ',
              desc = 'Files',
              group = 'Function',
              action = 'Telescope find_files find_command=rg,--ignore,--hidden,--files',
              key = 'f',
            },
            {
              icon = ' ',
              desc = 'Apps',
              group = 'String',
              action = 'Telescope app',
              key = 'a',
            },
            {
              icon = ' ',
              desc = 'dotfiles',
              group = 'Constant',
              action = 'Telescope dotfiles',
              key = 'd',
            },
          },
        },
      }
    end,

    requires = { 'nvim-tree/nvim-web-devicons' }
  }
end
