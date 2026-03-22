-- remake ctags tags
-- name, command, opts
vim.api.nvim_create_user_command(
	"MakeTags",
	function ()
		vim.cmd("!ctags -R .")
	end,
	{}
)

-- test for creating a popup window
vim.api.nvim_create_user_command(
    "Pop",
    function()
        vim.fn.popup_create({'howdy'}, {})
    end,
    {}
)


function window()
    local buf = vim.api.nvim_create_buf(false, true)
    vim.api.nvim_buf_set_lines(buf, 0, -1, false, { "foobar" })

    vim.api.nvim_open_win(buf, true, {
        relative = 'cursor',
        row = 1,
        col = 0,
        width = 10,
        height = 1,
        style = 'minimal',
        border = 'rounded'
    })
end


-- custom - see tree of directory when in netrw
-- TBD, currently not worth the trouble

