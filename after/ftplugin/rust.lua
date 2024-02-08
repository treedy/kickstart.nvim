local function nmap(key, rust_lsp_cmd, desc)
  vim.keymap.set('n', key, function()
      vim.cmd.RustLsp(rust_lsp_cmd)
    end,
    { buffer = 0, desc = desc })
end

-- nmap(',RK', {'hover', 'actions'}, '[H]over (Rust)') -- same as hover
nmap(',rJ', 'joinLines', '[J]oin (Rust)')
nmap(',re', 'renderDiagnostic', 'Render [e]rrors (Rust)')
nmap(',rc', 'openCargo', 'Open [C]argo (Rust)')

require('which-key').register({  -- documentation basically
  [',r'] = { name = '[R]ust', _, buffer = 0 },
})
