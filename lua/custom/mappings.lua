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
