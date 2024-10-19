vim.g.mapleader = " "
vim.o.number = true
vim.o.relativenumber = false
vim.o.laststatus = 2
vim.o.list = true
vim.o.listchars = table.concat({ "extends:…", "nbsp:␣", "precedes:…", "tab:> " }, ",")
vim.o.autoindent = true
vim.o.shiftwidth = 4
vim.o.tabstop = 4
vim.o.expandtab = true
vim.o.scrolloff = 10
vim.o.clipboard = "unnamed,unnamedplus"
vim.o.updatetime = 1000
vim.opt.iskeyword:append("-")
vim.o.spelllang = "de,en"
vim.o.spelloptions = "camel"
vim.opt.complete:append("kspell")
vim.o.path = vim.o.path .. ",**"
vim.o.tags = vim.o.tags .. ",/home/dosa/.config/nvim/tags"

vim.cmd("colorscheme randomhue")
