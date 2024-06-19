return {
    "nvim-lua/plenary.nvim",
    {
        "rose-pine/neovim",
        -- priority = 1000,
        -- name = "rose-pine",
        -- config = function()
        --     vim.cmd("colorscheme rose-pine")
        -- end
    },
    {
        "EdenEast/nightfox.nvim",
        priority = 1000,
        name = "nightfox",
        config = function()
            vim.cmd("colorscheme nightfox")
        end
    },
    {
        "Saecki/crates.nvim",
        event = { "BufRead Cargo.toml" },
        opts = {
            src = {
                cmp = { enabled = true },
            },
        },
    },
    "nvim-treesitter/nvim-treesitter-context",
    {
        'numToStr/Comment.nvim',
        opts = {
            -- add any options here
        },
        lazy = false,
        config = function()
            require('Comment').setup()
        end
    }

}
