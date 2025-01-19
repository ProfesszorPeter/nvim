return{
  "tpope/vim-fugitive",
  vim.keymap.set("n","gs", ":Git<CR>"),
  vim.keymap.set("n","gc", ":Git commit<CR>");
  vim.keymap.set("n","gp", ":Git push<CR>")
}
