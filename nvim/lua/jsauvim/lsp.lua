local lsp_map = {
    -- Lua
    ['luals'] = {
        {'lua-language-server'},
        {'lua'},
        {'.luarc.json', '.luarc.jsonc'},
    },
    -- Python
    ['pyright'] = {
        {'pyright-langserver', '--stdio'},
        {'python'},
        {'pyproject.toml', 'setup.py', 'setup.cfg', 'requirements.txt', '.git'},
    },
}

-- Setup all lsp servers in map
for lsp, opts in pairs(lsp_map) do
    vim.lsp.enable(lsp)
    vim.lsp.config(lsp, {
        cmd = opts[1],
        filetypes = opts[2],
        root_markers = opts[3],
    })
end

-- Set omnifunc based on LSP (itself based on filetype)
vim.opt.omnifunc = "v:lua.vim.lsp.omnifunc"
