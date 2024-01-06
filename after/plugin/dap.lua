---@diagnostic disable: missing-fields
local dap, dapui = require('dap'), require('dapui')
dapui.setup(
  {
    controls =
    {
      enabled = true,
      icons =
      {
        disconnect = '',
        pause = '',
        play = '',
        run_last = '',
        terminate = '',
        step_over = '',
        step_into = '',
        step_out = '',
        step_back = '',
      },
    },
  }
)
vim.keymap.set('n', '<leader>bb', dap.toggle_breakpoint, { desc = 'de[b]ug [b]reakpoint' })
vim.keymap.set('n', '<leader>bc', dap.continue, { desc = 'de[b]ug [c]ontinue' })
vim.keymap.set('n', '<F5>', dap.close, { desc = 'Stop debugging' })
vim.keymap.set('n', '<F6>', dap.step_into, { desc = 'Step into' })
vim.keymap.set('n', '<F7>', dap.step_over, { desc = 'Step over' })
vim.keymap.set('n', '<F8>', dap.step_out, { desc = 'Step out' })
vim.keymap.set('n', '<leader>bt', dapui.toggle, { desc = 'de[b]ug [t]oggle' })
