-- DIY lazygit integration
vim.api.nvim_create_user_command(
    "LG",
    function()
        local term_buf = vim.api.nvim_create_buf(false, true)
        local enter_window = true
   
        vim.api.nvim_open_win(term_buf, enter_window, {
            relative="editor",
            row = vim.o.lines - 1,
            col = 0,
            width = vim.o.columns,
            height = math.floor((vim.o.lines -1) / 2),
            border = "rounded",
            title = "fzf"
        })
        vim.fn.jobstart("lazygit", {
            term = true,
            on_exit = function()
                vim.cmd(":q"); --auto exit when process terminates
            end,
        })
        vim.cmd "startinsert"
    end,
    {}

    )


--- keybind for QOL improvement
vim.keymap.set("n", "<leader>lg", vim.cmd.LG)
