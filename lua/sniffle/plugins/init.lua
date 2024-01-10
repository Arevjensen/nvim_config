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
        config = function()
            require('crates').setup()
        end,
    },
    "nvim-treesitter/nvim-treesitter-context",
    {
  "j-hui/fidget.nvim",
  opts = {
    -- options
  },
}
}
