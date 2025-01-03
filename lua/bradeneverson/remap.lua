vim.g.mapleader = " "

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("n", "<C-s>", vim.cmd.w)
vim.keymap.set("n", "<leader>sq", vim.cmd.wq)

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Rust Based Remaps for builidng running and testing
vim.keymap.set("n", "<leader>b", ":terminal cargo build<CR>")
vim.keymap.set("n", "<leader>br", ":terminal cargo build -r<CR>")

vim.keymap.set("n", "<leader>t", function()
  local file_ext = vim.fn.expand("%:e")
  if file_ext == "rs" then
    vim.cmd("terminal cargo test")
  elseif file_ext == "go" then
    vim.cmd("terminal go test .")
  else
    print("Unsupported file type for testing.")
  end
end)

vim.keymap.set('n', '<leader>tr', function()
  vim.cmd('terminal cargo test -- --nocapture')
end, { silent = true })

vim.keymap.set("n", "<leader>r", function()
  local file_ext = vim.fn.expand("%:e")
  if file_ext == "rs" then
    vim.cmd("terminal cargo run")
  elseif file_ext == "go" then
    vim.cmd("terminal go run .")
  else
    print("Unsupported file type for running.")
  end
end)

vim.keymap.set("n", "<leader>rr", ":terminal cargo run -r<CR>")

vim.keymap.set("n", "<leader>ca", ":!cargo add ")

vim.keymap.set('n', '<leader>wr', function()
  vim.cmd('cd %:p:h')
  vim.cmd('terminal cargo run')
end, { silent = true })

vim.keymap.set('n', '<leader>wrr', function()
  vim.cmd('cd %:p:h')
  vim.cmd('terminal cargo run -r')
end, { silent = true })

vim.keymap.set("n", "<leader>c", ":terminal cargo clippy<CR>")

vim.keymap.set("n", "<leader>qq", ":bd!<CR>")
