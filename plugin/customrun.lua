local state = {
    run = ""
}

function set_custom_command(args)
    run = args["args"]
    vim.keymap.set("n", "<leader>cr", ":terminal " .. run .. "<CR>")
end

vim.api.nvim_create_user_command("SetCustomRun", set_custom_command, { nargs='?' })
vim.keymap.set("n", "<leader>scr", ":SetCustomRun ")
