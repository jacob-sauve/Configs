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
-- move text to 1 line after end of current Selection, re select, auto indent, re select
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

-- custom - see tree of directory when in netrw
--vim.keymap.set()
