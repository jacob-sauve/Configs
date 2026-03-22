-- NEOSCROLL
return {
    "karb94/neoscroll.nvim",
    event = "VeryLazy", -- only loads when essentials are there
    config = function()
        local neoscroll = require("neoscroll")

        neoscroll.setup({
            mappings = {
                "<C-u>", "<C-d>",
                "<C-b>", "<C-f>",
                "<C-y>", "<C-e>",
                "zt", "zz", "zb",
            },
            hide_cursor = true,
            stop_eof = true,
            respect_scrolloff = false,
            cursor_scrolls_alone = true,
            duration_multiplier = 1.0,
            easing = "linear",
        })

        local keymap = {
            ["<Up>"] = function() neoscroll.ctrl_u({ duration = 200 }) end,
            ["<Down>"] = function() neoscroll.ctrl_d({ duration = 200 }) end,
        }

        local modes = { "n", "v", "x" }
        for key, func in pairs(keymap) do
            vim.keymap.set(modes, key, func)
        end
    end,
}
