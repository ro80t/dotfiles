vim.api.nvim_create_user_command(
    "InitLua",
    function()
        vim.cmd.edit(vim.fn.stdpath("config") .. "/init.lua")
    end,
    {}
)

vim.api.nvim_create_autocmd("FileType", {
    pattern = { "<filetype>" },
    callback = function() vim.treesitter.start() end,
})

