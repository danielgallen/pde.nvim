-- File: lua/custom/plugins/telescope-file-browser.lua

return {
  -- Define the telescope-file-browser plugin with its dependencies
  'nvim-telescope/telescope-file-browser.nvim',
  dependencies = { 'nvim-telescope/telescope.nvim', 'nvim-lua/plenary.nvim' },

  -- Set up the plugin after it's been loaded
  config = function()
    -- Extension is loaded in main init.lua telescope setup
    -- Set the keymap for launching the file browser
    vim.api.nvim_set_keymap('n', '<space>fb', ':Telescope file_browser<CR>', { noremap = true, silent = true })
  end,
}
