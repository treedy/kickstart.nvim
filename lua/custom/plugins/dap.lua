-- DAP is a debugger for neovim
return {
  {
    'rcarriga/nvim-dap-ui',
    dependencies = {
      'mfussenegger/nvim-dap',
      'nvim-neotest/nvim-nio',
    },
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
