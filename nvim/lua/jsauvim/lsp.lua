-- Currently replaced by mason and mason-lspconfig
--[[  local lsp_map = {
    -- Lua
    ['luals'] = {
        cmd = {'lua-language-server'},
        filetypes = {'lua'},
        root_markers = {'.luarc.json', '.luarc.jsonc'},
    },
    -- Python
    ['pyright'] = {
        cmd = {'pyright-langserver', '--stdio'},
        filetypes = {'python'},
        root_markers = {'pyproject.toml', 'setup.py', 'setup.cfg', 'requirements.txt', '.git'},
    },
}

-- Setup all lsp servers in map
for lsp, opts in pairs(lsp_map) do
    vim.lsp.config(lsp, {
        cmd = opts.cmd,
        filetypes = opts.filetypes,
        root_markers = opts.root_markers,
    })
    vim.lsp.enable(lsp)
end

-- Set omnifunc based on LSP (itself based on filetype)
vim.opt.omnifunc = "v:lua.MiniCompletion.completefunc_lsp" ]]--
