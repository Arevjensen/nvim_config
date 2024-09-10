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
        tag = 'stable',
        config = function()
            require('crates').setup()
        end,
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
