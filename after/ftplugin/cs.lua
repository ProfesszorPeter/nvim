
vim.cmd[[hi @function.builtin.lua guifg=turquoise]]
vim.cmd[[hi @keyword.conditional.lua guifg=blueviolet]] 
vim.cmd[[hi @boolean.lua guifg=blue]]

local opts = { noremap=true, silent=true }

local function quickfix()
    vim.lsp.buf.code_action({
        filter = function(a) return a.isPreferred end,
        apply = true
    })
end

vim.keymap.set('n', '<leader>qf', quickfix, opts)
