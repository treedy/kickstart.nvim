vim.o.cmdheight = 2
vim.o.colorcolumn = '80,100,120'
vim.o.confirm = true
vim.o.listchars = 'tab:▸ ,eol:¬'
vim.o.modeline = true
vim.o.relativenumber = true
vim.o.ruler = true
vim.o.visualbell = true

-- Cursor colors
require('which-key').setup({
  plugins = {
    presets = {
      operators = false,
    },
  },
})
require('modes').setup({
  colors = {
    copy = "#f5c359",
    delete = "#c75c6a",
    insert = "#78ccc5",
    visual = "#9745be",
  },

  -- Set opacity for cursorline and number background
  line_opacity = 0.15,

  -- Enable cursor highlights
  set_cursor = true,

  -- Enable cursorline initially, and disable cursorline for inactive windows
  -- or ignored filetypes
  set_cursorline = true,

  -- Enable line number highlights to match cursorline
  set_number = true,

  -- Disable modes highlights in specified filetypes
  -- Please PR commonly ignored filetypes
  ignore_filetypes = { 'NvimTree', 'TelescopePrompt' }
})

-- Copilot config
vim.g.copilot_no_tab_map = true

-- Comment config
require('Comment').setup({
  -- keymappings
  toggler = {
    line = ',cc',
    block = ',bb',
  },
  opleader = {
    line = ',c',
    block = ',b',
  },
  extra = {
    above = ',cp',
    below = ',co',
    eol = ',ca',
  }
})
