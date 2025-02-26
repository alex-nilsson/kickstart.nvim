return {
  'akinsho/toggleterm.nvim',
  version = '*',
  config = function()
    require('toggleterm').setup {}

    vim.keymap.set('n', '<C-ö>', '<cmd>ToggleTerm direction=float<cr>', { desc = 'Open toggle term' })
  end,
}
