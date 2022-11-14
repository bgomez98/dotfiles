local vim = vim
local augroup = vim.api.nvim_create_augroup('user_cmds', {clear = true})

local command = vim.api.nvim_create_user_command
local autocmd = vim.api.nvim_create_autocmd

command('ReloadConfig', 'source $MYVIMRC', {})

autocmd('TextYankPost', {
  group = augroup,
  desc = 'Resaltar texto copiado',
  callback = function(event)
    vim.highlight.on_yank({higroup = 'Visual', timeout = 200})
  end
})

-- Disable the statusline, tabline and cmdline while the alpha dashboard is open
autocmd('User', {
  pattern = 'AlphaReady',
  desc = 'disable status, tabline and cmdline for alpha',
  callback = function()
    vim.go.laststatus = 0
    vim.opt.showtabline = 0
    vim.opt.cmdheight = 0
  end,
})

autocmd('BufUnload', {
  buffer = 0,
  desc = 'enable status, tabline and cmdline after alpha',
  callback = function()
    vim.go.laststatus = 2
    vim.opt.showtabline = 2
    vim.opt.cmdheight = 1
  end,
})


