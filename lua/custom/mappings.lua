-- Insert mode personal short cuts
vim.keymap.set('i', 'jk', '<Escape>')

-- Normal mode personal short cuts
vim.keymap.set('n', ',s', vim.cmd.update, { desc = '[S]ave file' })
vim.keymap.set('n', ',l', function() vim.o.list = not vim.o.list end,
  { desc = 'Toggle [L]ist' })


-- Harpoon specific
local harpoon = require('harpoon')
-- harpoon:setup() is in init.lua
vim.keymap.set("n", "<C-h><C-a>",
  function()
    harpoon:list():append()
  end,
  { desc = 'harpoon [a]ppend' }
)
vim.keymap.set("n", "<C-h><C-h>",
  function()
    harpoon.ui:toggle_quick_menu(harpoon:list())
  end,
  { desc = '[h]arpoon toggle' }
)

-- Debugger mappings
local dap, dapui = require('dap'), require('dapui')
vim.keymap.set('n', '<leader>bb', dap.toggle_breakpoint, { desc = 'de[b]ug [b]reakpoint' })
vim.keymap.set('n', '<leader>bc', dap.continue, { desc = 'de[b]ug [c]ontinue' })
vim.keymap.set('n', '<F5>', dap.close, { desc = 'Stop debugging' })
vim.keymap.set('n', '<F6>', dap.step_into, { desc = 'Step into' })
vim.keymap.set('n', '<F7>', dap.step_over, { desc = 'Step over' })
vim.keymap.set('n', '<F8>', dap.step_out, { desc = 'Step out' })
vim.keymap.set('n', '<leader>bt', dapui.toggle, { desc = 'de[b]ug [t]oggle' })

-- local cmp = require('cmp')
-- vim.keymap.set('i', '<C-[>', cmp.mapping.close())
-- vim.keymap.set('i', '<C-[>', cmp.mapping.abort())

-- Copilot mappings
vim.keymap.set('i', '<C-Space>', '<Plug>(copilot-suggest)')
vim.keymap.set('i', '<C-L>', '<Plug>(copilot-accept-word)')
vim.keymap.set('i', '<C-M-L>', '<Plug>(copilot-accept-line)')

-- document any custom mappings and or mapping prefixes
require('which-key').register {
  ['<leader>b'] = { name = 'De[b]ug', _ = 'which_key_ignore' },
  ['<C-h>'] = { name = '[H]arpoon', _ = 'which_key_ignore' },
}
