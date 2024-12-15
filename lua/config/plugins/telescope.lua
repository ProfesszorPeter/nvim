return {
  "nvim-telescope/telescope.nvim",
  tag = '0.1.8',
  dependencies = {
    'nvim-lua/plenary.nvim',
    {
      'nvim-telescope/telescope-fzf-native.nvim',
      build = 'make'
    }
  },
  config = function()
    require('telescope').setup {
      extension = {
        fzf = {}
      }
    }
    local builtin = require('telescope.builtin')
    vim.keymap.set('n', '<C-f>', builtin.find_files)
    vim.keymap.set('n', '<C-g>', builtin.git_files, {})
  end
}

--  --vim.keymap.set('n', '<leader>pws', function()
--  --    local word = vim.fn.expand("<cword>")
--  --    builtin.grep_string({ search = word })
--  --end)
--  --vim.keymap.set('n', '<leader>pWs', function()
--  --    local word = vim.fn.expand("<cWORD>")
--  --    builtin.grep_string({ search = word })
--  --end)
--  --vim.keymap.set('n', '<leader>ps', function()
--  --    builtin.grep_string({ search = vim.fn.input("Grep > ") })
--  --end)
--
--}
