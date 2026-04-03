require("mason-lspconfig").setup({
    automatic_enable = true,
    ensure_installed = {
        "html", -- Html
        "cssls", -- CSS
        "sqls", -- SQL
        "bashls", -- Bash
        "jsonls", -- JSON
        "yamlls", -- YAML
        "taplo", -- TOML
    },
})
