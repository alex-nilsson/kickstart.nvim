return {
  'nvimtools/none-ls.nvim',
  version = '*',
  config = function()
    require('null-ls').setup {
      debug = true,
    }
  end,
}
