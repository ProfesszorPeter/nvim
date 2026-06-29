vim.pack.add{{src = 'https://github.com/neovim/nvim-lspconfig'}}
vim.lsp.enable("lua_ls","pylsp","html","cssls","markdown_oxide", "yamlls")
vim.lsp.config("lua_ls",{ })
vim.lsp.config("bashls",{ })
vim.lsp.config("html",{ })
vim.lsp.config("cssls",{ })
vim.lsp.config("markdown_oxide",{ })
vim.lsp.config("gopls",{ })
vim.lsp.config("yamlls",{ })
vim.lsp.config("ltex_plus",{ })

vim.lsp.handlers['textDocument/signatureHelp'] = vim.lsp.buf(
    vim.lsp.handlers['signature_help'], {
        border = 'single',
        close_events = {"CursorMoved", "BufHidden", "InsertCharPre"},
    }
)


