return {
  'ray-x/lsp_signature.nvim',
  event = 'VeryLazy',
  opts = {
    bind = true, -- Mandatory in order for the window to show up
    floating_window = true,
    hint_enable = true,
    hint_prefix = '💡',
    transparency = 20,
    close_timeout = 7000,
    floating_window_above_cur_line = true,
    extra_trigger_chars = { '(', ',' }, -- Trigger signature help on these characters
    handler_opts = {
      border = 'rounded',
    },
  },
  config = function(_, opts)
    require('lsp_signature').setup(opts)
  end,
}
