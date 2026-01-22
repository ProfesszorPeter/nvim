print("set.lua loaded")
vim.g.mapleader = " "
vim.o.number=true
vim.o.relativenumber=true
vim.o.autoread = true
vim.o.wrap = false
vim.o.winborder = "rounded"


local set = vim.opt
vim.o.shiftwidth = 2
vim.opt.cursorline = true
vim.o.guicursor = ""

vim.o.tabstop = 4
vim.o.softtabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true

vim.o.smartindent = true

vim.o.swapfile = false
vim.o.backup = false
vim.o.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.o.undofile = true

vim.o.hlsearch = false
vim.o.incsearch = true

vim.o.termguicolors = true

vim.o.scrolloff = 8
vim.o.signcolumn = "yes"
set.isfname:append("@-@")

vim.o.updatetime = 50

vim.o.colorcolumn = "80"
