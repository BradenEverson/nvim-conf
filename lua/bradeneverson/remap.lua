vim.g.mapleader = " "

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("n", "<C-s>", vim.cmd.w)
vim.keymap.set("n", "<leader>sq", vim.cmd.wq)

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Rust Based Remaps for builidng running and testing
vim.keymap.set("n", "<leader>b", ":! cargo build<CR>")
vim.keymap.set("n", "<leader>br", ":! cargo build -r<CR>")

vim.keymap.set("n", "<leader>t", ":terminal cargo test<CR>")
vim.keymap.set("n", "<leader>tr", ":terminal cargo test -- --nocapture<CR>")

vim.keymap.set("n", "<leader>r", ":terminal cargo run<CR>")
vim.keymap.set("n", "<leader>rr", ":terminal cargo run -r<CR>")

vim.keymap.set("n", "<leader>c", ":terminal cargo clippy<CR>")

vim.keymap.set("n", "<leader>qq", ":bd!<CR>")
