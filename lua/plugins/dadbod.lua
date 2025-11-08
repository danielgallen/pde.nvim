return {
  'tpope/vim-dadbod',
  ft = { 'sql', 'mysql', 'plsql', 'psql' },
  config = function()
    vim.keymap.set('n', '<leader>db', ':DBUI<CR>', { desc = 'DB Browser (vim-dadbod-ui)' })
  end,
}
