return {
  {
    "neovim/nvim-lspconfig",
    dependencies = {
'Saghen/blink.cmp',
{
'williamboman/mason.nvim',
'williamboman/mason-lspconfig.nvim',
},
      {
        "folke/lazydev.nvim",
        ft = "lua", -- only load on lua files
        opts = {
          library = {
            -- See the configuration section for more details
            -- Load luvit types when the `vim.uv` word is found
            { path = "${3rd}/luv/library", words = { "vim%.uv" } },
          },
        },
      },
    },
    config = function()
      local capabilities = require('blink.cmp').get_lsp_capabilities()
      require("lspconfig").lua_ls.setup {capabilities = capabilities}
    end,
require("mason").setup(),
require("mason-lspconfig").setup()

-- After setting up mason-lspconfig you may set up servers via lspconfig
 require("lspconfig").lua_ls.setup {}
-- ...
  }
}



