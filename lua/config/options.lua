-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
--

vim.opt.termguicolors = true

vim.g.encoding = "UTF-8"
vim.o.fileencoding = "utf-8"

vim.o.scrolloff = 8
vim.o.sidescrolloff = 8

-- line number
vim.wo.number = true
vim.wo.relativenumber = true

vim.wo.cursorline = true

vim.wo.signcolumn = "yes"

-- indent
vim.o.tabstop = 4
vim.bo.tabstop = 4
vim.o.softtabstop = 4
vim.o.shiftround = true

vim.o.shiftwidth = 4
vim.bo.shiftwidth = 4

vim.o.expandtab = true
vim.bo.expandtab = true
vim.o.autoindent = true
vim.bo.autoindent = true
vim.o.smartindent = true

vim.o.ignorecase = true
vim.o.smartcase = true

vim.o.incsearch = true

vim.o.cmdheight = 2

vim.o.autoread = true
vim.bo.autoread = true

vim.o.wrap = false
vim.wo.wrap = false

vim.o.whichwrap = "b,s,<,>,[,],h,l"

vim.o.hidden = true

vim.o.backup = false
vim.o.writebackup = false
vim.o.swapfile = false

vim.o.updatetime = 300

vim.o.splitbelow = true
vim.o.splitright = true

vim.g.completeopt = "menu,menuone,noselect,noinsert"

vim.o.shortmess = vim.o.shortmess .. "c"
vim.o.pumheight = 10

vim.o.scrolloff = math.floor(0.5 * vim.o.lines)

vim.o.termguicolors = true

vim.g.netrw_keepdir = 0
vim.g.netrw_banner = 0
vim.g.netrw_winsize = 30

vim.api.nvim_set_hl(0, "netrwMarkFile", {
  link = "Search",
})

local group = vim.api.nvim_create_augroup("misc_augroup", { clear = true })
vim.api.nvim_create_autocmd("BufReadPost", {
  desc = "Open file at the last position it was edited earlier",
  group = group,
  pattern = "*",
  command = 'silent! normal! g`"zv',
})
