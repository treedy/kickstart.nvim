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
nmap(',rr', {'runnables', bang=true}, '[R]un last config(Rust)')
nmap(',rR', {'runnables', bang=false}, '[R]un config(Rust)')
nmap(',rd', {'debuggables', bang=true}, '[D]ebug last config(Rust)')
nmap(',rD', {'debuggables', bang=false}, '[D]ebug config(Rust)')

require('which-key').register({  -- documentation basically
  [',r'] = { name = '[R]ust', _, buffer = 0 },
})
