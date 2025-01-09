local set = vim.opt_local

set.shiftwidth = 2

if true then
  return
end
vim.cmd [[hi @function.builtin.lua guifg=turquoise]]
vim.cmd [[hi @keyword.conditional.lua guifg=blueviolet]]
vim.cmd [[hi @boolean.lua guifg=blue]]

vim.cmd [[hi @variable.lua guifg=black]]
