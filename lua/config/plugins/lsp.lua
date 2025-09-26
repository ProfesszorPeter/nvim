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
      --vim.lsp.config.lua_ls.setup { capabilites = capabilities }

      vim.lsp.config('lua_ls', {
        on_init = function(client)
          if client.workspace_folders then
            local path = client.workspace_folders[1].name
            if
                path ~= vim.fn.stdpath('config')
                and (vim.uv.fs_stat(path .. '/.luarc.json') or vim.uv.fs_stat(path .. '/.luarc.jsonc'))
            then
              return
            end
          end

          client.config.settings.Lua = vim.tbl_deep_extend('force', client.config.settings.Lua, {
            runtime = {
              -- Tell the language server which version of Lua you're using (most
              -- likely LuaJIT in the case of Neovim)
              version = 'LuaJIT',
              -- Tell the language server how to find Lua modules same way as Neovim
              -- (see `:h lua-module-load`)
              --path = {
              --'lua/?.lua',
              --'lua/?/init.lua',
              --},
            },
            -- Make the server aware of Neovim runtime files
            workspace = {
              checkThirdParty = false,
              library = {
                vim.env.VIMRUNTIME
                -- Depending on the usage, you might want to add additional paths
                -- here.
                -- '${3rd}/luv/library'
                -- '${3rd}/busted/library'
              }
              -- Or pull in all of 'runtimepath'.
              -- NOTE: this is a lot slower and will cause issues when working on
              -- your own configuration.
              -- See https://github.com/neovim/nvim-lspconfig/issues/3189
              -- library = {
              --   vim.api.nvim_get_runtime_file('', true),
              -- }
            }
          })
        end,
        settings = {
          Lua = {}
        }
      })
      vim.lsp.enable('lua_ls')

    vim.lsp.config('csharp_ls',{ capabilites = capabilities })
      vim.lsp.enable('csharp_ls')
      vim.lsp.config('omnisharp', { capabilites = capabilities })
      vim.lsp.enable('omnisharp')
      --vim.lsp.config.csharp_ls.setup { capabilites = capabilities }
      --vim.lsp.config.omnisharp.setup { capabilites = capabilities }
      --vim.lsp.config.pylsp.setup { capabilites = capabilities }

      vim.lsp.config('pylsp', {
        settings = {
          pylsp = {
            plugins = {
              pycodestyle = {
                ignore = { 'W391' },
                maxLineLength = 100
              }
            }
          }
        }
      })
      vim.lsp.enable('pylsp')

      vim.lsp.config('html', {
        capabilities = capabilities,
      })
      vim.lsp.enable('html')
      vim.lsp.config('dockerls', {
        settings = {
          docker = {
            languageserver = {
              formatter = {
                ignoreMultilineInstructions = true,
              },
            },
          }
        }
      })
      vim.lsp.enable('dockerls')

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

      vim.keymap.set("n", "<F2>", vim.lsp.buf.rename, { buffer = 0 })
      vim.keymap.set("n", "gd", builtin.lsp_definitions)
      vim.keymap.set("n", "gr", builtin.lsp_references, { buffer = 0 })
      vim.keymap.set("n", "gD", vim.lsp.buf.declaration, { buffer = 0 })
      vim.keymap.set("n", "gD", vim.lsp.buf.definition)
      vim.keymap.set("n", "gT", vim.lsp.buf.type_definition, { buffer = 0 })
      vim.keymap.set("n", "K", vim.lsp.buf.hover, { buffer = 0 })

      vim.keymap.set("n", "<space>ca", vim.lsp.buf.code_action, { buffer = 0 })
      vim.keymap.set("n", "<space>wd", builtin.lsp_document_symbols, { buffer = 0 })
    end,
  }
}
