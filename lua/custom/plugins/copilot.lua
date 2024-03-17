return {
  {
    'github/copilot.vim',
    init = function ()
      vim.keymap.set('i', '<M-j>', '<Plug>(copilot-suggest)')
      vim.keymap.set('i', '<M-k>', '<Plug>(copilot-accept-word)')
      vim.keymap.set('i', '<M-l>', '<Plug>(copilot-accept-line)')
      vim.keymap.set('i', '<M-;>', 'copilot#Accept("\\<CR>")', {
        expr = true,
        replace_keycodes = false
      })
      vim.g.copilot_no_tab_map = true
    end
  },
}
