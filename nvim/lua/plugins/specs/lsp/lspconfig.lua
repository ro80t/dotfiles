return {
    "neovim/nvim-lspconfig",

    dependencies = {
        { "folke/neoconf.nvim", lazy = true, opts = {} },
    },

    cmd = { "LspInfo", "LspInstall", "LspStart" },
}
