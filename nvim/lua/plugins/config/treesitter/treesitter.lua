require("nvim-treesitter").setup({
    ensure_installed = "all",
    ignore_install = { "ipkg" },
    lazy = vim.fn.argc(-1) == 0,
    highlight = {
        enable = true,
    },
    indent = {
        enable = false,
    },
})
