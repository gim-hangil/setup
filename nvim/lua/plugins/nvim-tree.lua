-- NeoVIM Tree
vim.pack.add({
  { src = 'https://github.com/nvim-tree/nvim-web-devicons' },
  { src = 'https://github.com/nvim-tree/nvim-tree.lua' },
})
require('nvim-tree').setup({
    view = {
        width = 30,
    },
    filters = {
        dotfiles = true,
    }
})
