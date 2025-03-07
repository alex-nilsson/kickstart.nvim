return {
  'CRAG666/betterTerm.nvim',
  opts = {
    position = 'bot',
    size = 15,
  },
  config = function()
    require('betterTerm').setup()

    local betterTerm = require 'betterTerm'
    -- toggle firts term
    vim.keymap.set({ 'n', 't' }, '<C-ö>', betterTerm.open, { desc = 'Open terminal' })
    -- Select term focus
    vim.keymap.set({ 'n' }, '<leader>tt', betterTerm.select, { desc = 'Select terminal' })
    -- Create new term
    local current = 2
    vim.keymap.set({ 'n' }, '<leader>tn', function()
      betterTerm.open(current)
      current = current + 1
    end, { desc = 'New terminal' })
  end,
}
