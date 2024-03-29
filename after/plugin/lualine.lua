require('lualine').setup {
  options = {
    icons_enabled = true,
    -- More themes can be found at https://github.com/nvim-lualine/lualine.nvim/blob/master/THEMES.md 
    -- theme = 'auto', -- Use colors from colorscheme; I find it hard to see window separation
    theme = 'dracula',
    component_separators = { left = '', right = ''},
    section_separators = { left = '', right = ''},
  },
}
