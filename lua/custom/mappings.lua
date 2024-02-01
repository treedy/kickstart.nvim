-- Insert mode personal short cuts
vim.keymap.set('i', 'jk', '<Escape>')

-- Normal mode personal short cuts
vim.keymap.set('n', ',s', vim.cmd.write, { desc = '[S]ave file' })
vim.keymap.set('n', ',l', function() vim.o.list = not vim.o.list end,
  { desc = 'Toggle [L]ist' })

-- document any custom mappings and or mapping prefixes
require('which-key').register {
  ['<leader>b'] = { name = 'De[b]ug', _ = 'which_key_ignore' },
  ['<C-h>'] = { name = '[H]arpoon', _ = 'which_key_ignore' },
  ['<leader>x'] = { name = 'Trouble (diagnostics)', _ = 'which_key_ignore' },
}

-- Comment plugin keymappings
---@diagnostic disable-next-line: missing-fields
require('Comment').setup({
  toggler = {
    line = ',cc',
    block = ',bb',
  },
  opleader = {
    line = ',c',
    block = ',b',
  },
  extra = {
    above = ',cp',
    below = ',co',
    eol = ',ca',
  }
})

-- Trouble plug-in keybindings-- Lua
vim.keymap.set("n", "<leader>xx", function() require("trouble").toggle() end, { desc = 'Toggle' })
vim.keymap.set("n", "<leader>xw", function() require("trouble").toggle("workspace_diagnostics") end,
  { desc = 'Workspace diagnostics' })
vim.keymap.set("n", "<leader>xd", function() require("trouble").toggle("document_diagnostics") end,
  { desc = 'Document diagnostics' })
vim.keymap.set("n", "<leader>xq", function() require("trouble").toggle("quickfix") end,
  { desc = 'Quickfix' })
vim.keymap.set("n", "<leader>xl", function() require("trouble").toggle("loclist") end,
  { desc = 'Location list' })
-- vim.keymap.set("n", "gR", function() require("trouble").toggle("lsp_references") end)
