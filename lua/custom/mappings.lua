-- Normal mode personal short cuts
vim.keymap.set('n', ',s', vim.cmd.write, { desc = '[S]ave file' })
vim.keymap.set('n', '<leader>th', function() vim.o.list = not vim.o.list end,
  { desc = 'Toggle [h]idden chars' })
vim.keymap.set('n', '<leader>tu', ':DiagnosticToggleUnderline<CR>',
  { desc = 'Toggle diagnostic [u]nderline' })

-- document any custom mappings and or mapping prefixes
require('which-key').register {
  ['<leader>b'] = { name = 'De[b]ug', _ = 'which_key_ignore' },
  ['<C-h>'] = { name = '[H]arpoon', _ = 'which_key_ignore' },
  ['<leader>x'] = { name = 'Trouble (diagnostics)', _ = 'which_key_ignore' },
}

-- Trouble plug-in keybindings-- Lua
local trouble = require("trouble")
vim.keymap.set("n", "<leader>xx", function() trouble.toggle() end, { desc = 'Toggle' })
vim.keymap.set("n", "<leader>xw", function() trouble.toggle("workspace_diagnostics") end,
  { desc = 'Workspace diagnostics' })
vim.keymap.set("n", "<leader>xd", function() trouble.toggle("document_diagnostics") end,
  { desc = 'Document diagnostics' })
vim.keymap.set("n", "<leader>xq", function() trouble.toggle("quickfix") end,
  { desc = 'Quickfix' })
vim.keymap.set("n", "<leader>xl", function() trouble.toggle("loclist") end,
  { desc = 'Location list' })
