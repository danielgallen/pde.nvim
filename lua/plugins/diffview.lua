return {
  'sindrets/diffview.nvim',
  dependencies = {
    'nvim-lua/plenary.nvim',
  },
  config = function()
    local diffview = require('diffview')
    
    diffview.setup({
      enhanced_diff_hl = true,
      view = {
        default = {
          layout = 'diff2_horizontal',
        },
        merge_tool = {
          layout = 'diff3_horizontal',
        },
      },
    })
    
    vim.keymap.set('n', '<leader>gv', '<cmd>DiffviewOpen<CR>', { desc = 'Open Diffview' })
    vim.keymap.set('n', '<leader>gV', '<cmd>DiffviewClose<CR>', { desc = 'Close Diffview' })
    vim.keymap.set('n', '<leader>gh', '<cmd>DiffviewFileHistory<CR>', { desc = 'Diffview file history' })
  end,
}