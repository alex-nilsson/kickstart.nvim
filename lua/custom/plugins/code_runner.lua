return {
  'CRAG666/code_runner.nvim',
  version = '*',
  dependencies = {
    'CRAG666/code_runner.nvim',
  },
  config = function()
    local start_command = 'clang++ '
    local remove_command = 'rm'
    local file_to_remove = ' /tmp/$fileNameWithoutExt'

    if vim.fn.has 'win32' and not vim.fn.has 'mac' then
      start_command = 'g++'
      remove_command = 'del /F'
      file_to_remove = ' \\tmp\\$fileNameWithoutExt.exe'
    end

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
          start_command,
          ' $fileName -std=c++14 -o /tmp/$fileNameWithoutExt &&',
          '/tmp/$fileNameWithoutExt &&',
          remove_command,
          file_to_remove,
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
