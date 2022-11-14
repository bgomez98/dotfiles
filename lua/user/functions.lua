local M = {}

function M.file_explorer(cwd)
  if vim.o.lines > 17 then
    require('lir.float').toggle(cwd)
  else
    vim.cmd({cmd = 'edit', args = {cwd or vim.fn.expand('%:p:h')}})
  end
end

return M
