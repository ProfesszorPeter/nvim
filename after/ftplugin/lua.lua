local set = vim.opt_local

set.shiftwidth = 2
set.number = true
set.relativenumber = true

vim.cmd[[hi @function.builtin.lua guifg=turquoise]]
vim.cmd[[hi @keyword.conditional.lua guifg=blueviolet]] 
vim.cmd[[hi @boolean.lua guifg=blue]]

