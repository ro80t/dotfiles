return {
    "stevearc/conform.nvim",
    version = "^9",
    event = { "VeryLazy" },
    config = function()
        require("plugins.config.language.conform")
    end
}
