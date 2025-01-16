local state = {
    run = ""
}

-- Path to store the run command in the current directory
local function get_run_command_path()
    return vim.fn.getcwd() .. "/.nvim_run"
end

-- Load the saved run command from file
local function load_run_command()
    local path = get_run_command_path()
    if vim.fn.filereadable(path) == 1 then
        local file = io.open(path, "r")
        if file then
            state.run = file:read("*l") or ""
            file:close()
        end
    end
end

-- Save the run command to file
local function save_run_command()
    local path = get_run_command_path()
    local file = io.open(path, "w")
    if file then
        file:write(state.run)
        file:close()
    end
end

-- Floating input for setting the custom run command
function set_custom_command()
    vim.ui.input({
        prompt = "Enter Custom Run Command: ",
        default = state.run
    }, function(input)
        if input then
            state.run = input
            save_run_command()  -- Save the command to file
            vim.keymap.set("n", "<leader>cr", ":terminal " .. state.run .. "<CR>", { noremap = true, silent = true })
        end
    end)
end

-- User command to set the custom run command
vim.api.nvim_create_user_command("SetCustomRun", set_custom_command, {})

-- Keybinding to trigger SetCustomRun
vim.keymap.set("n", "<leader>scr", function()
    vim.cmd("SetCustomRun")
end, { noremap = true, silent = true })

-- Load the saved command on startup
load_run_command()

-- Map <leader>cr if a command exists
if state.run ~= "" then
    vim.keymap.set("n", "<leader>cr", ":terminal " .. state.run .. "<CR>", { noremap = true, silent = true })
end

