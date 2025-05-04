return {
  {
    "folke/trouble.nvim",
    opts = {}, -- for default options, refer to the configuration section for custom setup.
    cmd = "Trouble",

  },
  vim.keymap.set('n', '<leader>tt', function()
    require("trouble").toggle("diagnostics")
  end),

  vim.keymap.set('n', '<leader>n', function()
    require("trouble").next({ skip_groups = true, jump = true })
  end)
}
