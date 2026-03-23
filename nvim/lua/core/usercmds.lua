vim.api.nvim_create_user_command("NvimConfig", function()
    vim.cmd.edit(vim.fn.stdpath("config"))
end, {})

vim.api.nvim_create_user_command("LspHealth", "checkhealth vim.lsp", { desc = "LSP health check" })
