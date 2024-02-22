return {
    { -- Collection of various small independent plugins/modules
        'echasnovski/mini.nvim',
        config = function()
            -- Better Around/Inside textobjects
            --
            -- Examples:
            --  - `af` - around function call
            --  - `inq` - inside next quote
            require('mini.ai').setup { n_lines = 500 }

            -- Add/delete/replace surroundings (brackets, quotes, etc.)
            require('mini.surround').setup()

            -- Simple and easy statusline.
            --  You could remove this setup call if you don't like it,
            --  and try some other statusline plugin
            require('mini.statusline').setup()
            require('mini.files').setup()
            vim.keymap.set("n", "<leader>pv", "<cmd>:lua MiniFiles.open()<CR>")

            -- ... and there is more!
            --  Check out: https://github.com/echasnovski/mini.nvim
        end,
    },
}
