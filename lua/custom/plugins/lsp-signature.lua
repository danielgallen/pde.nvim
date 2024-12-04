return {
  'ray-x/lsp_signature.nvim',
  event = 'InsertEnter',
  opts = {
    bind = true,
    handler_opts = {
      border = 'rounded',
    },
    floating_window = true, -- Enable floating window for function signature
    hint_enable = true, -- Enable virtual text hints
    hint_prefix = '🔍 ', -- Prefix for parameter hints
    doc_lines = 3, -- Limit documentation lines
    hi_parameter = 'LspSignatureActiveParameter', -- Highlight parameter
  },
  config = function(_, opts)
    require('lsp_signature').setup(opts)
  end,
}
