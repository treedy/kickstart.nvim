-- DAP is a debugger for neovim
return {
  {
    'rcarriga/nvim-dap-ui',
    dependencies = {
      'mfussenegger/nvim-dap',
      'nvim-neotest/nvim-nio',
    },
    config = {
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
  },
  'theHamsta/nvim-dap-virtual-text',
  { -- DAP python integration
    'rcarriga/nvim-dap-python',
    dependencies = { 'microsoft/debugpy' },
    config = function()
      require('dap-python').setup('~/.virtualenv/debugpy/bin/python')
    end
  },
}
