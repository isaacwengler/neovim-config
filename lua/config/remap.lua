vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- quality of life stuff
-- move highlighted code up/down
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
-- don't move cursor on J
vim.keymap.set("n", "J", "mzJ`z")
-- center cursor on page up/down
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
-- center cursor on next/last search
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- paste without overriding register
vim.keymap.set("x", "<leader>p", [["_dP]])
-- yank into system register
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])
-- delete without overriding register
vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])

vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

-- switch tmux session
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-session<CR>")

vim.keymap.set("n", "<C-w>t", vim.cmd.tabclose)
