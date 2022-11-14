require("bufferline").setup({
  options = {
    mode = 'buffers',
    offsets = {
      {filetype = 'NvimTree'}
    },
    hover = {
      enabled = true,
      delay = 200,
      reveal = {'close'}
    },
    diagnostic = 'nvim_lsp',
    diagnostics_update_in_insert = false,
  },
  highlights = {
    buffer_selected = {
      italic = false
    },
    indicator_selected = {
      fg = {attribute = 'fg', highlight = 'Function'},
      italic = false
    },
  },
})
