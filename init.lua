print("advent of neovim")

require("config.lazy")

vim.keymap.set('n', "<space><space>x", "<cmd>source %<CR>")
vim.keymap.set('n', "<space>x", "<cmd>:.lua<CR>")
vim.keymap.set('v', "<space>x", "<cmd>:lua<CR>")

--vim.api.nvim_create_autocmd('TextYankPost', {
	--desc = "Highlith when yanking text",
	--group = vim.api.nvim_create_autocmd('highlith-yank',{ clear = true }),
	--callback = function()
		--vim.highlith.on_yank()
	--end,

--})
vim.api.nvim_create_autocmd('TextYankPost', {
	desc = 'Highlight when yanking (copying) text',
	group = vim.api.nvim_create_augroup('highlight-yank', { clear = true }),
	callback = function()
		vim.highlight.on_yank()
	end,
})
