-- MASTER KEY
vim.g.mapleader = " "

-- MAPPINGS
vim.keymap.set("n", "<leader>..", vim.cmd.Ex)
vim.keymap.set("n", "<leader>f", function ()
	vim.cmd.find(vim.fn.input("Find > "))
end)

