local vim = vim
local fn = require('user.functions')
local bind = vim.keymap.set

vim.g.mapleader = ' '

bind('n', '<leader>w', '<cmd>write<cr>')
bind('n', '<leader>q', '<cmd>quit<cr>')

bind({'n', 'x'}, 'cp', '"+y')
bind({'n', 'x'}, 'cv', '"+p')
bind({'n', 'x'}, 'x', '"_x')

bind('n', '<leader>a', ':keepjumps normal! ggVG<CR>', {desc = 'Seleccionar todo el texto'})

bind('i', 'ii', '<ESC>')

bind('n', '*', '*zz')

-- bind('n', '<F2>', '<cmd>Lexplore<cr>')

bind({'n', 'x'}, '<Leader>e', '%', remap)

bind('n', '<Leader>bq', ':bdelete<CR>')
-- bind('n', '<Leader>q', ':bdelete<CR>') -- cerrar buffer

bind('n', '<Leader>bl', ':buffer #<CR>') -- regresar al buffer anterior

bind('n', '[b', ':bprevious<CR>')
bind('n', ']b', ':bnext<CR>')

-- window split
bind('n', '<Leader>sp', ':vsplit<CR>')
bind('n', '<Leader>dsp', ':split<CR>')


--local builtin = require('telescope.builtin')
bind('n', '<leader><space>', '<cmd>Telescope buffers<cr>')
bind('n', '<leader>?', '<cmd>Telescope oldfiles<cr>')
bind('n', '<leader>ff', '<cmd>Telescope find_files<cr>')
bind('n', '<leader>fg', '<cmd>Telescope live_grep<cr>')
bind('n', '<leader>fd', '<cmd>Telescope diagnostics<cr>')
bind('n', '<leader>fs', '<cmd>Telescope current_buffer_fuzzy_find<cr>')

bind('n', '<Leader>nt', fn.file_explorer)
bind('n', '<Leader>da', function() fn.file_explorer(vim.fn.getcwd()) end)
