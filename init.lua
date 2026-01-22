--require("config/keymaps")
require("config/set")

vim.pack.add{
    {src = 'https://github.com/neovim/nvim-lspconfig'},
    {src = 'https://github.com/mason-org/mason.nvim'},
    {src = 'https://github.com/mason-org/mason-lspconfig.nvim'},
    {src = 'https://github.com/nvim-treesitter/nvim-treesitter'},
    {src = 'https://github.com/oxfist/night-owl.nvim'},
    {src = 'https://github.com/mbbill/undotree'},
    }


require "night-owl".setup()
vim.cmd.colorscheme("night-owl")
require("mason").setup({
    ui = {
        icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗"
        }
    }
})require "mason-lspconfig".setup()
require "nvim-treesitter.config".setup(
    {
        install_dir=vim.fn.stdpath('data').. '/site',
        auto_install = true,
        ensure_installed = {"lua"},
        highlight = {enabled = true}
    })
vim.lsp.enable("lua_ls")

vim.lsp.config("lua_ls",{
    settings = {
        Lua = {
            workspace = {
                library = vim.api.nvim_get_runtime_file("",true),
            }
        }
    }
    })
vim.api.nvim_create_autocmd('LspAttach', {
	group = vim.api.nvim_create_augroup('my.lsp', {}),
	callback = function(args)
		local client = assert(vim.lsp.get_client_by_id(args.data.client_id))
		if client:supports_method('textDocument/completion') then
			-- Optional: trigger autocompletion on EVERY keypress. May be slow!
			local chars = {}; for i = 32, 126 do table.insert(chars, string.char(i)) end
			client.server_capabilities.completionProvider.triggerCharacters = chars
			vim.lsp.completion.enable(true, client.id, args.buf, { autotrigger = true })
		end
	end,
})
vim.cmd [[set completeopt+=menuone,noselect,popup]]

vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
  })


vim.lsp.handlers['textDocument/signatureHelp'] = vim.lsp.with(
    vim.lsp.handlers['signature_help'], {
        border = 'single',
        close_events = {"CursorMoved", "BufHidden", "InsertCharPre"},
    }
)



