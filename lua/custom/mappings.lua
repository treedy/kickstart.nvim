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

-- DAP debugging mappings
local dap = require("dap")
local dapui = require("dapui")
vim.keymap.set('n', '<leader>bb', dap.toggle_breakpoint, { desc = 'de[b]ug [b]reakpoint' })
vim.keymap.set('n', '<leader>bc', dap.continue, { desc = 'de[b]ug [c]ontinue' })
vim.keymap.set('n', '<F5>', dap.close, { desc = 'Stop debugging' })
vim.keymap.set('n', '<F6>', dap.step_into, { desc = 'Step into' })
vim.keymap.set('n', '<F7>', dap.step_over, { desc = 'Step over' })
vim.keymap.set('n', '<F8>', dap.step_out, { desc = 'Step out' })
vim.keymap.set('n', '<leader>bt', dapui.toggle, { desc = 'de[b]ug [t]oggle' })


-- Harpoon mappings
local harpoon = require("harpoon")
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
vim.keymap.set("n", "<C-h><C-n>",
  function()
    harpoon:list():next()
  end,
  { desc = 'Harpoon [n]ext' }
)
vim.keymap.set("n", "<C-h><C-p>",
  function()
    harpoon:list():prev()
  end,
  { desc = 'Harpoon [p]revious' }
)
