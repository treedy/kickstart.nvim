vim.o.cmdheight = 2
vim.o.colorcolumn = '80,100,120'
vim.o.confirm = true
vim.o.cursorline = true
vim.o.fillchars = 'vert:󱖢'
vim.o.listchars = 'tab:» ,eol:¶,nbsp:␣,trail:•,extends:⟩,precedes:⟨'
vim.o.modeline = true
vim.o.relativenumber = true
vim.o.ruler = true
vim.o.scrolloff = 8
vim.o.splitbelow = true
vim.o.splitright = true
vim.o.visualbell = true
vim.o.wildmode = 'longest:full,full'

vim.api.nvim_create_user_command("DiagnosticToggleUnderline", function()
	local config = vim.diagnostic.config
	local ul = config().underline
	config {
		underline = not ul,
	}
end, { desc = "Toggle diagnostic underline" })
-- require 'lspconfig'.terraformls.setup {}
vim.api.nvim_create_autocmd({ "BufWritePre" }, {
  pattern = { "*.tf", "*.tfvars" },
  callback = function()
    vim.lsp.buf.format()
  end,
})

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

vim.cmd.colorscheme('catppuccin-frappe')
