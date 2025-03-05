return {
  'stevearc/overseer.nvim',
  version = '*',
  config = function()
    require('overseer').setup {
      templates = { 'builtin', 'cpp_build' },
    }
  end,
}
