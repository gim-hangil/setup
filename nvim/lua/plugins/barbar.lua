-- Barbar Tabline
vim.pack.add({
    { src = 'https://github.com/romgrk/barbar.nvim' },
})
require('barbar').setup({
    icons = {
        button = 'X',
        filetype = {
            enabled = false,
        },
    },
})
