-- MASTER KEY
vim.g.mapleader = " "

-- MAPPINGS
vim.keymap.set("n", "<leader>..", vim.cmd.Ex)
vim.keymap.set("n", "<leader>f", function ()
	vim.cmd.find(vim.fn.input("Find > "))
end)
vim.keymap.set("n", "<leader>b", vim.cmd.bw)
vim.keymap.set("n", "<leader>wtf", "g<C-]>")

-- move selected text up/down
-- move text to 1 line after end of current selection, re select, auto indent, re select
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- toggle spellcheck
vim.keymap.set({'n', 'i', 'v'}, "<C-,>", function ()
	vim.opt.spell = not vim.opt.spell:get();
	vim.opt.spelllang = {'en_ca','fr', 'es'};
	if vim.opt.spell:get() then
		print("Navigate through errors with ]s [s\nSee corrections with z=\nAdd word to dict with zG zg")
	end
end)

-- yank to system clipboard!
vim.keymap.set({'n', 'v'}, "<leader>y", "\"+y")
vim.keymap.set('n', "<leader>Y", "\"+Y")

-- toggle inline hints
vim.keymap.set('n', "<leader>h", function()
    vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled());
end)

-- quote, bracket etc. auto complete
local openers = {
    ["\""] = "\"",
    ["\'"] = "\'",
    ["("] = ")",
    ["["] = "]",
    ["{"] = "}",
    ["<"] = ">",
}
for ochar, cchar in pairs(openers) do
    vim.keymap.set('i', ochar, ochar .. cchar .. "<Esc>i")
end

-- unindenting with shift-tab in all modes
local modes = {
    ['v'] = {'<gv', '>gv'},
    ['i'] = {'<C-d>', '<C-t>'},
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
