---@diagnostic disable: missing-fields
-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  {
    'ThePrimeagen/harpoon',
    branch = 'harpoon2',
    dependencies = { 'nvim-lua/plenary.nvim' },
    -- setup() done in mappings.lua
  },
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
  {
    'catppuccin/nvim',
    name = 'catppuccin',
    config = function()
      require('catppuccin').setup({
        transparent_background = true,
      })
      vim.cmd.colorscheme('catppuccin-frappe')
    end
  },
  {
    'epwalsh/obsidian.nvim',
    version = '*',
    lazy = true,
    ft = 'markdown',
    dependencies = { 'nvim-lua/plenary.nvim' },
    opts = {
      workspaces = {
        {
          name = 'playground',
          path = '/mnt/nasshare/obsidian/playground',
        },
        {
          name = 'personal',
          path = '/mnt/nasshare/obsidian/personal',
        },
      },
    },
  },
}
