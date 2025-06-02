return {
  'ThePrimeagen/refactoring.nvim',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-treesitter/nvim-treesitter',
  },
  lazy = false,
  config = function()
    require('refactoring').setup {}

    vim.api.nvim_set_keymap('x', '<space>re', ':Refactor extract ', { noremap = true })
    vim.api.nvim_set_keymap('x', '<space>rf', ':Refactor extract_to_file ', { noremap = true })
    vim.api.nvim_set_keymap('x', '<space>rv', ':Refactor extract_var ', { noremap = true })
    vim.api.nvim_set_keymap('n', '<space>rI', ':Refactor inline_func', { noremap = true })
  end,
}
