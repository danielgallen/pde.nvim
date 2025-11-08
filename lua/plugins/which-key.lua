return { -- Useful plugin to show you pending keybinds.
  'folke/which-key.nvim',
  event = 'VimEnter', -- Sets the loading event to 'VimEnter'
  opts = {
    -- delay between pressing a key and opening which-key (milliseconds)
    -- this setting is independent of vim.o.timeoutlen
    delay = 0,
    icons = {
      -- set icon mappings to true if you have a Nerd Font
      mappings = vim.g.have_nerd_font,
      -- If you are using a Nerd Font: set icons.keys to an empty table which will use the
      -- default which-key.nvim defined Nerd Font icons, otherwise define a string table
      keys = vim.g.have_nerd_font and {} or {
        Up = '<Up> ',
        Down = '<Down> ',
        Left = '<Left> ',
        Right = '<Right> ',
        C = '<C-…> ',
        M = '<M-…> ',
        D = '<D-…> ',
        S = '<S-…> ',
        CR = '<CR> ',
        Esc = '<Esc> ',
        ScrollWheelDown = '<ScrollWheelDown> ',
        ScrollWheelUp = '<ScrollWheelUp> ',
        NL = '<NL> ',
        BS = '<BS> ',
        Space = '<Space> ',
        Tab = '<Tab> ',
        F1 = '<F1>',
        F2 = '<F2>',
        F3 = '<F3>',
        F4 = '<F4>',
        F5 = '<F5>',
        F6 = '<F6>',
        F7 = '<F7>',
        F8 = '<F8>',
        F9 = '<F9>',
        F10 = '<F10>',
        F11 = '<F11>',
        F12 = '<F12>',
      },
    },

    -- Document existing key chains
    spec = {
      { '<leader>c', group = '[C]ode', mode = { 'n', 'x' } },
      { '<leader>d', group = '[D]ocument' },
      { '<leader>r', group = '[R]efactor', mode = { 'n', 'x' } },
      { '<leader>s', group = '[S]earch' },
      { '<leader>w', group = '[W]orkspace' },
      { '<leader>t', group = '[T]oggle' },
      { '<leader>h', group = 'Git [H]unk', mode = { 'n', 'v' } },
      { '<leader>g', group = '[G]it' },
      { '<leader>b', group = '[B]uffer' },

      -- LSP Navigation (g-prefix)
      { 'gd', desc = 'LSP: Go to definition' },
      { 'gD', desc = 'LSP: Go to declaration' },
      { 'gr', desc = 'LSP: Go to references' },
      { 'gI', desc = 'LSP: Go to implementation' },
      { 'gy', desc = 'LSP: Go to type definition' },
      { 'gO', desc = 'LSP: Document symbols' },
      { 'gW', desc = 'LSP: Workspace symbols' },

      -- Refactoring submenu documentation
      { '<leader>rn', desc = 'Rename symbol' },
      { '<leader>rr', desc = 'Open refactoring menu', mode = { 'n', 'x' } },
      { '<leader>re', desc = 'Extract (function/variable/block)', mode = { 'n', 'x' } },
      { '<leader>ri', desc = 'Inline (variable/function)', mode = { 'n', 'x' } },
      { '<leader>rv', desc = 'Extract variable', mode = 'x' },
      { '<leader>rb', desc = 'Extract block', mode = 'x' },
      { '<leader>rf', desc = 'Extract block to file', mode = 'x' },
      { '<leader>riv', desc = 'Inline variable', mode = { 'n', 'x' } },
      { '<leader>rif', desc = 'Inline function', mode = 'n' },
      { '<leader>rp', desc = 'Debug print variable', mode = { 'n', 'x' } },
      { '<leader>rP', desc = 'Debug print variable below', mode = 'n' },
      { '<leader>rc', desc = 'Clean up debug prints', mode = 'n' },

      -- Code action submenu documentation
      { '<leader>ca', desc = 'Code action', mode = { 'n', 'x' } },
      { '<leader>cA', desc = 'Source actions', mode = 'n' },
      { '<leader>co', desc = 'Organize imports', mode = 'n' },
      { '<leader>cF', desc = 'Fix all', mode = 'n' },
      { '<leader>cq', desc = 'Quick fix', mode = 'n' },
      { '<leader>cf', desc = 'Format buffer' },
      { '<leader>f', desc = 'Format buffer' },

      -- Document/Peek definition
      { '<leader>df', desc = 'Peek function definition' },
      { '<leader>dF', desc = 'Peek class definition' },

      -- Toggle operations
      { '<leader>th', desc = 'Toggle inlay hints' },

      -- Buffer operations
      { '<leader>bd', desc = 'Delete buffer' },
      { '<leader>bo', desc = 'Close other buffers' },
      { 'H', desc = 'Previous buffer' },
      { 'L', desc = 'Next buffer' },

      -- Git navigation
      { ']c', desc = 'Next git change' },
      { '[c', desc = 'Previous git change' },

      -- Diagnostic navigation
      { ']d', desc = 'Next diagnostic' },
      { '[d', desc = 'Previous diagnostic' },
      { ']e', desc = 'Next error' },
      { '[e', desc = 'Previous error' },

      -- Treesitter text objects navigation
      { ']m', desc = 'Next function start' },
      { '[m', desc = 'Previous function start' },
      { ']]', desc = 'Next class start' },
      { '[[', desc = 'Previous class start' },

      -- Treesitter text objects (shown in visual/operator-pending mode)
      { 'af', desc = 'Select outer function', mode = { 'x', 'o' } },
      { 'if', desc = 'Select inner function', mode = { 'x', 'o' } },
      { 'ac', desc = 'Select outer class', mode = { 'x', 'o' } },
      { 'ic', desc = 'Select inner class', mode = { 'x', 'o' } },
    },
  },
}
