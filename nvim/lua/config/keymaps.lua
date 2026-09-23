vim.g.mapleader = ','
vim.keymap.set('n', '<Leader>w', ':w<CR>', { desc = 'Save file' })
vim.keymap.set('n', '<Leader>n', ':enew<CR>', { desc = 'New buffer' })
vim.keymap.set('n', '<Leader>q', ':BufferClose<CR>', { desc = 'Close buffer' })
vim.keymap.set('n', '<Leader><S-q>', ':q<CR>', { desc = 'Quit' })
vim.keymap.set('n', '<Leader><Tab>', ':BufferNext<CR>', { desc = 'Next buffer' })
vim.keymap.set('n', '<Leader><S-Tab>', ':BufferPrevious<CR>', { desc = 'Previous buffer' })
vim.keymap.set('n', '<Leader>t', ':NvimTreeToggle<CR>', { desc = 'Toggle Nvim Tree' })
