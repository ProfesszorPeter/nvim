require("config/keymaps")
require("config/set")
require("config/autocmd")

require("plugins/night-owl")
require("plugins/mason")
require("plugins/lsp")
require("plugins/treesitter")
require("plugins/telescope")
require("plugins/harpoon")

vim.pack.add{
    {src = 'https://github.com/mbbill/undotree'},
    }


vim.cmd [[set completeopt+=menuone,noselect,popup]]






