local vim = vim

vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.mouse = 'a'
vim.opt.mousemoveevent = true

vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.hlsearch = false

vim.opt.wrap = true

vim.opt.breakindent = true

vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.softtabstop = 2
vim.opt.expandtab = true

vim.opt.scrolloff = 2
vim.opt.sidescrolloff = 5

vim.opt.cursorline = true

vim.opt.splitright = true
vim.opt.splitbelow = true

vim.opt.list = true
vim.opt.listchars:append "space:⋅"
vim.opt.listchars:append "eol:↴"

vim.opt.showmode = false

vim.opt.termguicolors = true

vim.opt.smartindent = true
vim.opt.linebreak = true

vim.opt.shortmess:append "c"

-- vim.opt.timeoutlen = 1000
-- vim.opt.undofile = true
-- vim.opt.updatetime = 300
-- vim.opt.signcolumn =  "yes"

vim.opt.completeopt = { "menuone", "noselect" }

-- vim.opt.filetype = "plugin on"

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.cmd [[
  syntax on
  colorscheme onedark
]]

vim.cmd [[highlight IndentBlanklineIndent1 guifg=#E06C75 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent2 guifg=#E5C07B gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent3 guifg=#98C379 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent4 guifg=#56B6C2 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent5 guifg=#61AFEF gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent6 guifg=#C678DD gui=nocombine]]

vim.cmd "set whichwrap+=<,>,[,],h,l"
vim.cmd [[set iskeyword+=-]]
vim.cmd [[set formatoptions-=cro]] -- TODO: this doesn't seem to work

-- vim.cmd([[
--   augroup highlight_current_word
--     au!
--     au CursorHold * :exec 'match Search /\V\<' . expand('<cword>') . '\>/'
--   augroup END
-- ]])

