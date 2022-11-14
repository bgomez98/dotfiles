require("nvim-lsp-installer").setup({
  automatic_installation = true, -- automatically detect which servers to install (based on which servers are set up via lspconfig)
  ensure_installed = { 'tsserver', 'eslint', 'bashls', 'sumneko_lua', 'jsonls', 'clangd', 'lemminx' },
  ui = {
    icons = {
      server_installed = "✓",
      server_pending = "➜",
      server_uninstalled = "✗"
    }
  }
})
