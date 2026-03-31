return {
    "mason-org/mason-lspconfig.nvim",
    event = { "VeryLazy" },
    dependencies = {
        "mason-org/mason.nvim",
        "neovim/nvim-lspconfig",
    },
    config = function()
        require("plugins.config.lsp.mason-lspconfig")
    end,
}
