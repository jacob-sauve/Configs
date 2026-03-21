-- name, command, opts
vim.api.nvim_create_user_command(
	"MakeTags",
	function ()
		vim.cmd("!ctags -R .")
	end,
	{}
)

-- custom - see tree of directory when in netrw
-- TBD, currently not worth the trouble
