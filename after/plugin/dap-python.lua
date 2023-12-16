require('dap-python').setup('~/.virtualenvs/debugpy/bin/python')

vim.keymap.set('n', '<leader>dc', function() require('dap').continue() end)
vim.keymap.set('n', '<leader>dg', function() require('dap').step_over() end)
vim.keymap.set('n', '<leader>di', function() require('dap').step_into() end)
vim.keymap.set('n', '<leader>do', function() require('dap').step_out() end)
vim.keymap.set('n', '<leader>db', function() require('dap').toggle_breakpoint() end)
vim.keymap.set('n', '<leader>dr', function() require('dap').repl.open() end)
