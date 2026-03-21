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
-- move text to 1 line after end of current selection, reselect, autoindent, reselect
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- custom - see tree of directory when in netrw
--vim.keymap.set()
