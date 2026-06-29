vim.pack.add{{src = 'https://github.com/nvim-treesitter/nvim-treesitter'}}
require "nvim-treesitter.config".setup(
    {
        install_dir=vim.fn.stdpath('data').. '/site',
        auto_install = true,
        ensure_installed = {"lua", "yaml", "html"},
        highlight = {enabled = true}
    })
