return {
  'lervag/vimtex',
  lazy = false,
  init = function()
    vim.g.vimtex_view_method = 'zathura'
    vim.g.vimtex_syntax_enabled = 1
    vim.g.vimtex_compiler_method = 'latexmk'
    vim.g.vimtex_compiler_latexmk = {
      options = {
        '-pdf',
        '-interaction=nonstopmode',
        '-synctex=1',
      },
      build_dir = '',
    }
  end,
  config = function()
    local map = vim.keymap.set
    map('n', '<leader>ll', '<cmd>VimtexCompile<CR>', { desc = 'Vimtex: Start compile' })
    map('n', '<leader>lv', '<cmd>VimtexView<CR>', { desc = 'Vimtex: View PDF' })
    map('n', '<leader>lk', '<cmd>VimtexStop<CR>', { desc = 'Vimtex: Stop compile' })
    -- (Optional) Filetype autocmd for spelling in .tex files
    vim.api.nvim_create_autocmd('FileType', {
      pattern = 'tex',
      callback = function()
        vim.opt_local.spell = true
        vim.opt_local.spelllang = 'en_us'
      end,
    })
  end,
}
