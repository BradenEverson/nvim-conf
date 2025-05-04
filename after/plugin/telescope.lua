local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>gg', function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)

require('telescope').setup({
  defaults = {
    file_ignore_patterns = {
      "target/",
      "node_modules",
      ".git",
      "%.lock",
      "%.o",
      "%.so",
      "%.dylib",
      "%.out",
    },

    mappings = {
      i = {
        ["<C-j>"] = require('telescope.actions').move_selection_next,
        ["<C-k>"] = require('telescope.actions').move_selection_previous,
      },
      n = {
        ["<C-j>"] = require('telescope.actions').move_selection_next,
        ["<C-k>"] = require('telescope.actions').move_selection_previous,
      },
    },
  },
})
