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
    vim.keymap.set('n', '<C-h>', builtin.help_tags, {})

    vim.keymap.set('n', '<leader>fw', function()
      local word = vim.fn.expand("<cword>")
      builtin.grep_string({ search = word })
    end)
    vim.keymap.set('n', '<leader>Ws', function()
      local word = vim.fn.expand("<cWORD>")
      builtin.grep_string({ search = word })
    end)
    vim.keymap.set('n', '<leader>ts', function()
      builtin.grep_string({ search = vim.fn.input("Grep > ") })
    end)
  end
}
