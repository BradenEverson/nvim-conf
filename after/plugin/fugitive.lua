vim.keymap.set("n", "<leader>gs", vim.cmd.Git)
vim.keymap.set("n", "<leader>ga", ":Git add .<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>grr", ":Git restore .<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>grb", ":Git rebase ", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>gc", ":Git commit<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>gp", ":Git push<CR>", { noremap = true, silent = true })
