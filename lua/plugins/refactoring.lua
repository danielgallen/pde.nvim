return {
  'ThePrimeagen/refactoring.nvim',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-treesitter/nvim-treesitter',
    'nvim-telescope/telescope.nvim',
  },
  lazy = false,
  config = function()
    require('refactoring').setup {
      -- Prompt for return type after function extraction
      prompt_func_return_type = {
        go = true,
        python = true,
      },
      -- Prompt for function parameters after extraction
      prompt_func_param_type = {
        go = true,
        python = true,
      },
      -- Print function configuration for debugging
      printf_statements = {},
      print_var_statements = {},
      -- Show success messages after refactoring
      show_success_message = true,
    }

    -- Load refactoring extension for telescope
    require('telescope').load_extension 'refactoring'

    local refactoring = require 'refactoring'

    -- Extract function/variable supports both normal and visual mode
    vim.keymap.set({ 'x', 'n' }, '<leader>re', function()
      refactoring.select_refactor {
        show_success_message = true,
      }
    end, { desc = 'Refactor: Extract (function/variable/block)' })

    -- Inline variable/function
    vim.keymap.set({ 'x', 'n' }, '<leader>ri', function()
      refactoring.select_refactor {
        show_success_message = true,
      }
    end, { desc = 'Refactor: Inline (variable/function)' })

    -- Extract block
    vim.keymap.set('x', '<leader>rb', function()
      refactoring.refactor 'Extract Block'
    end, { desc = 'Refactor: Extract block' })

    -- Extract block to file
    vim.keymap.set('x', '<leader>rf', function()
      refactoring.refactor 'Extract Block To File'
    end, { desc = 'Refactor: Extract block to file' })

    -- Extract variable (visual mode)
    vim.keymap.set('x', '<leader>rv', function()
      refactoring.refactor 'Extract Variable'
    end, { desc = 'Refactor: Extract variable' })

    -- Inline variable (normal and visual mode)
    vim.keymap.set({ 'n', 'x' }, '<leader>riv', function()
      refactoring.refactor 'Inline Variable'
    end, { desc = 'Refactor: Inline variable' })

    -- Inline function (normal mode)
    vim.keymap.set('n', '<leader>rif', function()
      refactoring.refactor 'Inline Function'
    end, { desc = 'Refactor: Inline function' })

    -- Debug refactorings
    -- Print variable
    vim.keymap.set({ 'x', 'n' }, '<leader>rp', function()
      refactoring.debug.print_var {}
    end, { desc = 'Refactor: Debug print variable' })

    -- Print variable below
    vim.keymap.set('n', '<leader>rP', function()
      refactoring.debug.print_var { below = true }
    end, { desc = 'Refactor: Debug print variable below' })

    -- Clean up debug prints
    vim.keymap.set('n', '<leader>rc', function()
      refactoring.debug.cleanup {}
    end, { desc = 'Refactor: Clean up debug prints' })

    -- Refactoring menu with telescope (main entry point)
    vim.keymap.set({ 'x', 'n' }, '<leader>rr', function()
      require('telescope').extensions.refactoring.refactors()
    end, { desc = 'Refactor: Open refactoring menu' })
  end,
}
