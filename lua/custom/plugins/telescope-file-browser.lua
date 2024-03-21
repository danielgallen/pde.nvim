-- File: lua/custom/plugins/telescope-file-browser.lua

return {
  {
    'nvim-telescope/telescope-file-browser.nvim',
    dependencies = { 'nvim-telescope/telescope.nvim', 'nvim-lua/plenary.nvim' },
  },

  vim.api.nvim_set_keymap('n', '<space>fb', ':Telescope file_browser<CR>', { noremap = true }),
}
