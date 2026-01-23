vim.pack.add{
    {src = "https://github.com/nvim-lua/plenary.nvim"},
    {src = "https://github.com/BurntSushi/ripgrep"},
    {src = "https://github.com/nvim-telescope/telescope-fzf-native.nvim"},
    {src = "https://github.com/nvim-telescope/telescope.nvim"}
    }

require("telescope").setup()

local builtin = require("telescope.builtin")

vim.keymap.set("n","<C-f>", builtin.find_files)
vim.keymap.set("n","<leader>tg", builtin.git_files)
vim.keymap.set("n","<leader>th", builtin.help_tags)

