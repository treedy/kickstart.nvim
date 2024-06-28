return {
  {
    'ThePrimeagen/harpoon',
    branch = 'harpoon2',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config =  {
      settings = {
        save_on_toggle = true,
        save_on_change = true,
        nav_first_in_list = false,
      },
    },
  },
}
