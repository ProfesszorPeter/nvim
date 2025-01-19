vim.keymap.set("n", "<leader>f", function() vim.lsp.buf.format() end)
vim.keymap.set('n', "<space><space>x", "<cmd>source %<CR>")
vim.keymap.set('n', "<space>x", "<cmd>:.lua<CR>")
vim.keymap.set('v', "<space>x", "<cmd>:lua<CR>")
