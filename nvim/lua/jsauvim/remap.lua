-- MASTER KEY
vim.g.mapleader = " "

-- MAPPINGS
vim.keymap.set("n", "<leader>..", vim.cmd.Ex)
vim.keymap.set("n", "<leader>f", [[:find<Space>]])

vim.keymap.set("n", "<leader>b", vim.cmd.bw)
vim.keymap.set("n", "<leader>wtf", "g<C-]>")

-- move selected text up/down
-- move text to 1 line after end of current selection, re select, auto indent, re select
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- yank to system clipboard!
vim.keymap.set({'n', 'v'}, "<leader>y", "\"+y")
vim.keymap.set('n', "<leader>Y", "\"+Y")

-- toggle spellcheck
vim.keymap.set({'n', 'i', 'v'}, "<C-,>", function ()
	vim.opt.spell = not vim.opt.spell:get();
	vim.opt.spelllang = {'en_ca','fr', 'es'};
	if vim.opt.spell:get() then
		print("Navigate through errors with ]s [s\nSee corrections with z=\nAdd word to dict with zG zg")
	end
end)

-- keep J, 1/2 page jumps and search result nav centred
vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- option to delete to void register (don't keep value)
vim.keymap.set({"n", "v"}, "<leader>d", "\"_d")

-- replace word currently on with subsequent input
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- make current file executable
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

-- shoutout
vim.keymap.set("n", "<leader><leader>", "<cmd>so<CR>")

-- lazyvim update
vim.keymap.set("n", "<leader>lv", [[:Lazy<CR>]])

-- manual line autocompletion override
vim.keymap.set('i', '<C-x><C-l>', '<C-x><C-l>', { noremap = true })

-- lsp formatting toggle ('justify')
vim.keymap.set("n", "<leader>j", function()
    vim.lsp.buf.format()
end)

-- toggle inline hints
vim.keymap.set('n', "<leader>h", vim.lsp.buf.hover)

-- for lsp: open error/warning on a line
vim.keymap.set('n', "<leader>e", vim.diagnostic.open_float)
-- navigate between errors/warnings (diagnostics)
vim.keymap.set('n', ']d', function()
    vim.diagnostic.goto_next()
    vim.diagnostic.open_float()
end)
vim.keymap.set('n', '[d', function()
    vim.diagnostic.goto_prev()
    vim.diagnostic.open_float()
end)

-- quickfix list opening & navigation
vim.keymap.set('n', '<leader>co', function()
    vim.diagnostic.setqflist() -- create quickfix list
    vim.cmd([[:copen]])
end)
vim.keymap.set('n', 'cn', [[:cnext<CR>]]) 
vim.keymap.set('n', 'cp', [[:cprev<CR>]])

-- quote, bracket etc. auto complete (if tabbed after)
local openers = {
    ["\""] = "\"",
    ["\'"] = "\'",
    ["("] = ")",
    ["["] = "]",
    ["{"] = "}",
    ["<"] = ">",
}
for ochar, cchar in pairs(openers) do
    vim.keymap.set('i', ochar .. "<Tab>", ochar .. cchar .. "<Esc>i")
end

-- unindenting with shift-tab/indenting with tab in all modes
local modes = {
    ['v'] = {'<gv', '>gv'},
    --['i'] = {'<C-d>', '<C-t>'},
    ['n'] = {'<<', '>>'},
}
for mode, toggles in pairs(modes) do
    vim.keymap.set(mode, "<S-Tab>", toggles[1]) --1st element
    vim.keymap.set(mode, "<Tab>", toggles[2])
end

-- auto-commenting with cmd-/
vim.keymap.set('v', '<C-/>', function()
    --vim.cmd(":'<-2p")
    --vim.api.nvim_put({"--[["}, "", false, false)
    --vim.cmd(":'>")
    print("to be implemented...")
end)
