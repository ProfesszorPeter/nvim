vim.pack.add{{src = 'https://github.com/neovim/nvim-lspconfig'}}
vim.lsp.enable("lua_ls")
vim.lsp.config("lua_ls",{
    settings = {
        Lua = {
            workspace = {
                library = vim.api.nvim_get_runtime_file("",true),
            }
        }
    }
    })

vim.lsp.handlers['textDocument/signatureHelp'] = vim.lsp.with(
    vim.lsp.handlers['signature_help'], {
        border = 'single',
        close_events = {"CursorMoved", "BufHidden", "InsertCharPre"},
    }
)
