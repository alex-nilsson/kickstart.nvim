return {
  'CRAG666/code_runner.nvim',
  version = '*',
  dependencies = {
    'CRAG666/code_runner.nvim',
  },
  config = function()
    require('code_runner').setup {
      mode = 'float',
      float = {
        border = 'double',
      },
      startinsert = true,
      filetype = {
        java = {
          'cd $dir &&',
          'javac $fileName &&',
          'java $fileNameWithoutExt',
        },
        python = 'python3 -u',
        typescript = 'deno run',
        rust = {
          'cd $dir &&',
          'rustc $fileName &&',
          '$dir/$fileNameWithoutExt',
        },
        cpp = {
          'cd $dir &&',
          'clang++ $fileName -std=c++14 -o /tmp/$fileNameWithoutExt &&',
          '/tmp/$fileNameWithoutExt &&',
          'rm /tmp/$fileNameWithoutExt',
        },
      },
    }

    vim.keymap.set('n', '<leader>rr', ':RunCode<CR>', { noremap = true, silent = false })
    vim.keymap.set('n', '<leader>rf', ':RunFile<CR>', { noremap = true, silent = false })
    vim.keymap.set('n', '<leader>rft', ':RunFile tab<CR>', { noremap = true, silent = false })
    vim.keymap.set('n', '<leader>rp', ':RunProject<CR>', { noremap = true, silent = false })
    vim.keymap.set('n', '<leader>rc', ':RunClose<CR>', { noremap = true, silent = false })
    vim.keymap.set('n', '<leader>crf', ':CRFiletype<CR>', { noremap = true, silent = false })
    vim.keymap.set('n', '<leader>crp', ':CRProjects<CR>', { noremap = true, silent = false })
  end,
}
