return {
  'NeogitOrg/neogit',
  dependencies = {
    'nvim-lua/plenary.nvim',
  },
  config = function()
    local neogit = require 'neogit'

    neogit.setup {
      kind = 'tab',
      signs = {
        section = { '', '' },
        item = { '', '' },
        hunk = { '', '' },
      },
      integrations = {
        diffview = true,
      },
    }

    vim.keymap.set('n', '<leader>gg', function()
      neogit.open()
    end, { desc = 'Open Neogit' })
    vim.keymap.set('n', '<leader>gc', function()
      neogit.open { 'commit' }
    end, { desc = 'Neogit commit' })
  end,
}

