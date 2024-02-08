package.path = package.path .. ";../../?.lua"
local custom_util = require('custom.util')

return {
  'mrcjkb/rustaceanvim',
  version = '^4', -- Recommended
  init = function()
    vim.g.rustaceanvim = {
      server = {
        on_attach = custom_util.LSP_ON_ATTACH,
      },
      tools = {
        code_actions = {
          ui_select_fallback = true,
        },
        enable_clippy = true,
      },
    }
  end,
  ft = { 'rust' },
}
