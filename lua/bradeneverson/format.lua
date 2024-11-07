vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = {"*.rs", "*.ml"},
  callback = function()
    vim.lsp.buf.format({ async = false })
  end,
})

