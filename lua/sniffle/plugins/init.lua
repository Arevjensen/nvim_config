return {
    "nvim-lua/plenary.nvim",
    {
        "rose-pine/neovim",
        name = "rose-pine",
        config = function()
            vim.cmd("colorscheme rose-pine")
        end
    },
    {
        "saecki/crates.nvim",
        event = 'VeryLazy',
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
