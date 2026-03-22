-- remake ctags tags
-- name, command, opts
vim.api.nvim_create_user_command(
	"MakeTags",
	function ()
		vim.cmd("!ctags -R .")
	end,
	{}
)


-- DIY fuzzyfind integration
vim.api.nvim_create_user_command(
    "FF",
    function()
        local term_buf = vim.api.nvim_create_buf(false, true)
        local enter_window = true
        local fzf_out_file = os.tmpname() -- gives unique path for non-overwrite
        local destination = ""
   
        vim.api.nvim_open_win(term_buf, enter_window, {
            relative="editor",
            row = vim.o.lines - 1,
            col = 0,
            width = vim.o.columns,
            height = math.floor((vim.o.lines -1) / 2),
            border = "rounded",
            title = "fzf"
        })
        vim.fn.jobstart("fzf >" .. fzf_out_file, {
            term = true,
            on_exit = function()
                local f = io.open(fzf_out_file, "r")
                if f then
                    destination = f:read("*all")
                    f:close()
                    os.remove(fzf_out_file)
                    vim.cmd(":q")
                    if #destination > 0 then
                        -- only run for non-empty strings
                        vim.cmd(":find " .. destination)
                    end
                end
            end,
        })
        vim.cmd "startinsert"
    end,
    {}

    )


-- custom - see tree of directory when in netrw
-- TBD, currently not worth the trouble
