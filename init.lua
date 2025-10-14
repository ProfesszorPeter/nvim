vim.opt.number = true
vim.opt.relativenumber = true
vim.g.mapleader = " "

vim.keymap.set('n', '<leader>so', ":source<CR>")
vim.keymap.set('n', '<leader>pv', ":Explore<CR>")

vim.pack.add(
  {
    {"https://github.com/nvim-telescope/telescope.nvim"},

  }
)
