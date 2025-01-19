return {
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      'saghen/blink.cmp',
      'williamboman/mason.nvim',
      'williamboman/mason-lspconfig.nvim',
      {
        "folke/lazydev.nvim",
        opts = {
          library = {
            { path = "${3rd}/luv/library", words = { "vim%.uv" } },
          },
        },
      },
    },
    config = function()
      local capabilities = require('blink.cmp').get_lsp_capabilities()
      require("lspconfig").lua_ls.setup { capabilites = capabilities }
      require('lspconfig').csharp_ls.setup { capabilites = capabilities }
      require 'lspconfig'.omnisharp.setup { capabilites = capabilities }
      require 'lspconfig'.pylsp.setup { capabilites = capabilities }
      require("lspconfig").dockerls.setup {
        settings = {
          docker = {
            languageserver = {
              formatter = {
                ignoreMultilineInstructions = true,
              },
            },
          }
        }
      }
      require 'lspconfig'.dockerls.setup {}

      require("mason").setup({
        ui = {
          icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗"
          }
        }
      })
      --vim.api.nvim_create_autocmd('LspAttach', {
      --callback = function(args)
      --local c = vim.lsp.get_client_by_id(args.data.client_id)
      --if not c then return end

      ---- Format the current buffer on save
      --vim.api.nvim_create_autocmd('BufWritePre', {
      --buffer = args.buf,
      --callback = function()
      --vim.lsp.buf.format({ bufnr = args.buf, id = c.id })
      --end,
      --})
      --end,
      --})
      local builtin = require "telescope.builtin"

          vim.keymap.set("n", "gd", builtin.lsp_definitions)
          vim.keymap.set("n", "gr", builtin.lsp_references, { buffer = 0 })
          vim.keymap.set("n", "gD", vim.lsp.buf.declaration, { buffer = 0 })
          vim.keymap.set("n", "gD", vim.lsp.buf.definition)
          vim.keymap.set("n", "gT", vim.lsp.buf.type_definition, { buffer = 0 })
          vim.keymap.set("n", "K", vim.lsp.buf.hover, { buffer = 0 })

          vim.keymap.set("n", "<space>cr", vim.lsp.buf.rename, { buffer = 0 })
          vim.keymap.set("n", "<space>ca", vim.lsp.buf.code_action, { buffer = 0 })
          vim.keymap.set("n", "<space>wd", builtin.lsp_document_symbols, { buffer = 0 })
    end,
  }
}
