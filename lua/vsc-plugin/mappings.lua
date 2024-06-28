-- Normal mode personal short cuts
-- lua = vim.api.nvim_call_function('VSCodeNotify', {'workbench.action.navigateLeft'})

vim.keymap.set('n', '<Space>',
  function() vim.api.nvim_call_function('VSCodeNotify', {'whichkey.show'}) end)
vim.keymap.set('n', ',s',
  function() vim.api.nvim_call_function('VSCodeNotify',
    {'workbench.action.files.save'})
  end)
