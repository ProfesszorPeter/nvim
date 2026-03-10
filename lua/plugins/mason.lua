vim.pack.add{
    {src = 'https://github.com/mason-org/mason.nvim'},
    {src = 'https://github.com/mason-org/mason-lspconfig.nvim'},
}
require("mason").setup({
    ui = {
        icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗"
        }
    }
})
require "mason-lspconfig".setup()
