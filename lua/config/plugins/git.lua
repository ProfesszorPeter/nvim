return{
  "tpope/vim-fugitive",
  vim.keymap.set("n","gs", vim.cmd.Git),
  vim.keymap.set("n","gc", vim.cmd.Git commit)
}

