local set = vim.opt_local

vim.opt.cursorline = true
set.shiftwidth = 4
set.number = true
set.relativenumber = true

config = function()
  local capabilities = require('blink.cmp').get_lsp_capabilities()
  require('lspconfig').csharp_ls.setup { capabilites = capabilities }
  require 'lspconfig'.omnisharp.setup { capabilites = capabilities }
end
vim.cmd [[hi @function.builtin.lua guifg=turquoise]]
vim.cmd [[hi @keyword.conditional.lua guifg=blueviolet]]
vim.cmd [[hi @boolean.lua guifg=blue]]
vim.cmd [[hi DiagnosticUnderlineError guifg=red]]
