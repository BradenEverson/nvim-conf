vim.g.mapleader = " "

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("n", "<C-s>", vim.cmd.w)
vim.keymap.set("n", "<leader>sq", vim.cmd.wq)

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

vim.keymap.set("n", "<leader>tsp", ":TransparentToggle<CR>")

vim.keymap.set('n', '<Tab>', '>>_')
vim.keymap.set('n', '<S-Tab>', '<<_')

vim.keymap.set('v', '<Tab>', '>gv')
vim.keymap.set('v', '<S-Tab>', '<gv')

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
  elseif file_ext == "zig" then 
    vim.cmd("terminal zig build run")
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

vim.api.nvim_set_keymap("n", "<leader>sn", "<Plug>(SpotifySkip)", { silent = true }) -- Skip the current track
vim.api.nvim_set_keymap("n", "<leader>sp", "<Plug>(SpotifyPause)", { silent = true }) -- Pause/Resume the current track
vim.api.nvim_set_keymap("n", "<leader>ss", "<Plug>(SpotifySave)", { silent = true }) -- Add the current track to your library
vim.api.nvim_set_keymap("n", "<leader>so", ":Spotify<CR>", { silent = true }) -- Open Spotify Search window
vim.api.nvim_set_keymap("n", "<leader>sd", ":SpotifyDevices<CR>", { silent = true }) -- Open Spotify Devices window
vim.api.nvim_set_keymap("n", "<leader>sb", "<Plug>(SpotifyPrev)", { silent = true }) -- Go back to the previous track
vim.api.nvim_set_keymap("n", "<leader>sh", "<Plug>(SpotifyShuffle)", { silent = true }) -- Toggles shuffle mode

