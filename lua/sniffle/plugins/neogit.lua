return {
    {
        "NeogitOrg/neogit",
        event = 'VeryLazy',
        dependencies = {
            "nvim-lua/plenary.nvim",         -- required
            "sindrets/diffview.nvim",        -- optional - Diff integration
            "nvim-telescope/telescope.nvim", -- optional
        },
        config = function()
            local neogit = require('neogit')
            neogit.setup {}
            vim.keymap.set("n", "<leader>gs", "<cmd>Neogit kind=vsplit<CR>")
        end
    }
}
