-- MINI PLUGIN
require("mini.surround").setup()
require("mini.completion").setup({
  lsp_completion = {
    source_func = "omnifunc", -- uses v:lua.vim.lsp.omnifunc under the hood
    auto_setup = true,
  },
})
