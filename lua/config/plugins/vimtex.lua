return {
  "lervag/vimtex",
  dependencies = {
    "neovim/nvim-lspconfig",
    "hrsh7th/cmp-nvim-lsp",
    "hrsh7th/nvim-cmp",
  },
  lazy = false,
  config = function()
    vim.g.vimtex_view_method = "zathura"


--    local cmp = require("cmp")
--    cmp.setup({
--      sources = cmp.config.sources({
--        { name = "buffer" },
--        { name = "nvim_lsp" },
--      }),
--      mapping = cmp.mapping.preset.insert({
--        ["<C-Space>"] = cmp.mapping.complete(),
--        ["<C-p>"] = cmp.mapping.scroll_docs(-4),
--        ["<C-n>"] = cmp.mapping.scroll_docs(4),
--        ["<C-y>"] = cmp.mapping.confirm({ select = true }),
--      }),
--    })
  end
}
