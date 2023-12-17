-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  {
    'ThePrimeagen/harpoon',
    branch = 'harpoon2',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
      require('harpoon').setup()
    end
  },
  --[[ {
    'zbirenbaum/copilot.lua',
    config = function()
      require('copilot').setup({})
    end
  },
  {
    'zbirenbaum/copilot-cmp',
    config = function()
      require('copilot_cmp').setup()
    end
  }, ]]
  {
    'github/copilot.vim',
  },
  {
    'mvllow/modes.nvim',
    tag = 'v0.2.0',
    config = function()
      require('modes').setup()
    end
  },
  -- DAP is a debugger for neovim
  {
    'rcarriga/nvim-dap-ui',
    dependencies = { 'mfussenegger/nvim-dap' },
    config = function()
      require('dapui').setup(
        {
          controls =
          {
            icons =
            {
              disconnect = '',
              pause = '',
              play = '',
              run_last = '菱',
              terminate = '',
              step_over = '',
              step_into = '',
              step_out = '',
              step_back = '倫',
            },
          },
        }
      )
    end
  },
  'theHamsta/nvim-dap-virtual-text',
  {  -- DAP python integration
    'rcarriga/nvim-dap-python',
    dependencies = { 'microsoft/debugpy' },
    config = function()
      require('dap-python').setup('~/.virtualenv/debugpy/bin/python')
    end
  },
}
