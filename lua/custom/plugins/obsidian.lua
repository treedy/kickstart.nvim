return {
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
