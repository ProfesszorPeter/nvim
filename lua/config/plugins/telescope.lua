return {
  "nvim-telescope/telescope.nvim",
  tag = "0.1.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    {
      "nvim-telescope/telescope-fzf-native.nvim",
      build = "make"
    },
    config = function()
      vim.keymap.set('n', '<space>fh', require('telescope.builtin').help_tags)
      vim.keymap.set('n', '<space>fd', require('telescope.builtin').find_files)
      vim.keymap.set("n", "<space>en", function()
        require("telescope.builtin").find_files {
          cwd = vim.fn.stdpath("config")
        }
      end)
    end

  }
}