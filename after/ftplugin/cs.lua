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
vim.cmd [[hi @function.builtinc_sharp guifg=turquoise]]
vim.cmd [[hi @keyword.conditionalc_sharp guifg=blueviolet]]
vim.cmd [[hi @booleanc_sharp guifg=blue]]
vim.cmd [[hi DiagnosticUnderlineError guifg=red]]
vim.cmd [[hi @lsp.mod.static.cs guifg=green]]

