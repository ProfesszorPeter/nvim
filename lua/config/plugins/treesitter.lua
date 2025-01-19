return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
      require 'nvim-treesitter.configs'.setup {
        ensure_installed = { "lua", "vim", "vimdoc", "query", "markdown", "markdown_inline", "python", "dockerfile", "yaml", "c_sharp" },
        auto_install = true,
        highlight = {
          enable = true,
          additional_vim_regex_highlighting = true,
        },
      }
    end,
  }
}
