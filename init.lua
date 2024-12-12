print("advent of neovim")

require("config.lazy")

vim.opt.shiftwidth = 4
vim.opt.clipboard = "unnamedplus"

--vim.wo.foldmethod = 'expr'
--vim.wo.foldexpr = 'v:lua.vim.treesitter.foldexpr()'

vim.cmd [[hi @function.builtin.lua guifg=turquoise]]
vim.cmd [[hi @keyword.conditional.lua guifg=blueviolet]]
vim.cmd [[hi @boolean.lua guifg=blue]]
if false then
  print "kék"
end
local x = 5
print(x)

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
