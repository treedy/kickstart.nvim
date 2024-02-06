package.path = package.path .. ";../../?.lua"
local custom_util = require('custom.util')
vim.g.rustaceanvim = {
  server = {
    on_attach = custom_util.LSP_ON_ATTACH,
    settings = {
      ["rust-analyzer"] = {
        check = {
          enable = true,
          command = "clippy",
          features = "all",
        },
      },
    },
    tools = {
      code_actions = {
        ui_select_fallback = true,
      },
    },
  },
}
