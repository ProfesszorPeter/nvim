local set = vim.opt_local

set.shiftwidth = 2

config = function()
  local capabilities = require('blink.cmp').get_lsp_capabilities()
  require 'lspconfig'.lua_ls.setup { capabilites = capabilities }
end

vim.cmd [[hi @lsp.type.function.lua guifg=turquoise]]
vim.cmd [[hi @lsp.type.variable.lua guifg=#93CCEA]]
vim.cmd [[hi @keyword.conditional.lua guifg=blueviolet]]
vim.cmd [[hi @boolean.lua guifg=blue]]

vim.cmd [[hi DiagnosticUnderlineError guifg=brown]]
