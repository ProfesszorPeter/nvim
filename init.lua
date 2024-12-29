print("advent of neovim")

require("config.lazy")

vim.opt.shiftwidth = 2
vim.opt.clipboard = "unnamedplus"

--vim.wo.foldmethod = 'expr'
--vim.wo.foldexpr = 'v:lua.vim.treesitter.foldexpr()'


vim.keymap.set('n', "<space><space>x", "<cmd>source %<CR>")
vim.keymap.set('n', "<space>x", "<cmd>:.lua<CR>")
vim.keymap.set('v', "<space>x", "<cmd>:lua<CR>")

vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})
