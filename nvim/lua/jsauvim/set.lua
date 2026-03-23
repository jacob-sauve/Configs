-- allow find recursively through subdirs
vim.opt.path:append("**")

-- allow tag autocompletion by looking in includes and dict
-- (dict only when spellcheck enabled)
vim.opt.complete:append(",i,kspell")

-- relative numbering + normal for current line
vim.opt.rnu = true
vim.opt.nu = true

-- thicc cursor
vim.opt.guicursor = ""

-- highlight search incrementally
vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.swapfile = false
vim.opt.backup = false

-- scrolling
vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"

-- colors
vim.opt.termguicolors = true

-- indentation
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true
