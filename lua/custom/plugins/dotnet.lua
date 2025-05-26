return {
  'MoaidHathot/dotnet.nvim',
  cmd = 'DotnetUI',
  keys = {
    { '<leader>/', mode = { 'n', 'v' } },
    { '<leader>na', ':DotnetUI new_item<CR>', { desc = '.NET new item', silent = true } },
    { '<leader>nb', ':DotnetUI file bootstrap<CR>', { desc = '.NET bootstrap class', silent = true } },
    { '<leader>nra', ':DotnetUI project reference add<CR>', { desc = '.NET add project reference', silent = true } },
    { '<leader>nrr', ':DotnetUI project reference remove<CR>', { desc = '.NET remove project reference', silent = true } },
    { '<leader>npa', ':DotnetUI project package add<CR>', { desc = '.NET ada project package', silent = true } },
    { '<leader>npr', ':DotnetUI project package remove<CR>', { desc = '.NET remove project package', silent = true } },
  },
  opts = {},
}
