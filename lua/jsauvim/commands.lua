-- name, command, opts
vim.api.nvim_create_user_command(
	"MakeTags",
	function ()
		vim.cmd("!ctags -R .")
	end,
	{}
)
