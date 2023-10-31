require('barbar').setup()

local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }
-- note: the commented shows actual keys <Alt-something>
-- Move to previous/next
-- map('n', '<A-,>', '<Cmd>BufferPrevious<CR>', opts)
map('n', '≤', '<Cmd>BufferPrevious<CR>', opts)
-- map('n', '<A-.>', '<Cmd>BufferNext<CR>', opts)
map('n', '≥', '<Cmd>BufferNext<CR>', opts)
-- Re-order to previous/next
-- map('n', '<A-<>', '<Cmd>BufferMovePrevious<CR>', opts)
map('n', '¯', '<Cmd>BufferMovePrevious<CR>', opts)
-- map('n', '<A->>', '<Cmd>BufferMovePrevious<CR>', opts)
map('n', '˘', '<Cmd>BufferMoveNext<CR>', opts)
-- Goto buffer in position...
-- map('n', '<A-1>', '<Cmd>BufferGoto 1<CR>', opts) and so on
map('n', '¡', '<Cmd>BufferGoto 1<CR>', opts)
map('n', '™', '<Cmd>BufferGoto 2<CR>', opts)
map('n', '£', '<Cmd>BufferGoto 3<CR>', opts)
map('n', '¢', '<Cmd>BufferGoto 4<CR>', opts)
map('n', '∞', '<Cmd>BufferGoto 5<CR>', opts)
map('n', '§', '<Cmd>BufferGoto 6<CR>', opts)
map('n', '¶', '<Cmd>BufferGoto 7<CR>', opts)
map('n', '•', '<Cmd>BufferGoto 8<CR>', opts)
map('n', 'ª', '<Cmd>BufferGoto 9<CR>', opts)
map('n', 'º', '<Cmd>BufferLast<CR>', opts)
-- Pin/unpin buffer
-- map('n', '<A-p>', '<Cmd>BufferPin<CR>', opts)
map('n', 'π', '<Cmd>BufferPin<CR>', opts)
-- Close buffer
-- map('n', '<A-c>', '<Cmd>BufferClose<CR>', opts)
map('n', 'ç', '<Cmd>BufferClose<CR>', opts)
-- Wipeout buffer
--                 :BufferWipeout
-- Close commands
--                 :BufferCloseAllButCurrent
--                 :BufferCloseAllButPinned
--                 :BufferCloseAllButCurrentOrPinned
--                 :BufferCloseBuffersLeft
--                 :BufferCloseBuffersRight
-- Magic buffer-picking mode
map('n', '<C-b>', '<Cmd>BufferPick<CR>', opts)
