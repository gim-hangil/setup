local opt = vim.opt
opt.number = true
opt.relativenumber = true

opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = true

opt.ignorecase = true
opt.smartcase = true

opt.cursorline = true
opt.wrap = false

opt.termguicolors = true

vim.cmd('syntax enable')
vim.cmd('filetype plugin indent on')
