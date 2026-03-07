return {
    "neovim/nvim-lspconfig",

    dependencies = {
        "saghen/blink.cmp",
        { "folke/neoconf.nvim", lazy = true, opts = {} },
    },

    cmd = { "LspInfo", "LspInstall", "LspStart" },

    opts = {
        servers = {
--            lua_ls = {}
        }
    },

    config = require("plugins.config.lsp.lspconfig")
}
