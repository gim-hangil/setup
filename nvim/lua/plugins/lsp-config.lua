-- LSP Config
vim.pack.add({
    { src = 'https://github.com/neovim/nvim-lspconfig' },
})

-- Pyright LSP
vim.lsp.enable('pyright')
vim.lsp.config('pyright', {
  settings = { pyright = { disableTaggedHints = false } },
})
