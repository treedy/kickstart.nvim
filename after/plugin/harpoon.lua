local harpoon = require('harpoon')
harpoon:setup({
  settings = {
    save_on_toggle = true,
    save_on_change = true,
    nav_first_in_list = false,
  },
})

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
